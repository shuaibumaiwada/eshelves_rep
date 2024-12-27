<?php
ob_start();
session_start();
Class Action {
	private $db;

	public function __construct() {
	
   	//include 'db_connect.php';
   		include ('db_connect.php');
    
    $this->db = $conn;
	}
	function __destruct() {
	    $this->db->close();
	    ob_end_flush();
	}

	function login(){
		extract($_POST);
		$qry = $this->db->query("SELECT * FROM users where username = '".$username."' and password = '".$password."' ");
		if($qry->num_rows > 0){
			foreach ($qry->fetch_array() as $key => $value) {
				if($key != 'passwors' && !is_numeric($key))
					$_SESSION['login_'.$key] = $value;
			}
			return 1;
		}else{
			return 2;
		}
	}
	function logout(){
		session_destroy();
		foreach ($_SESSION as $key => $value) {
			unset($_SESSION[$key]);
		}
		header("location:login.php");
	}

	function save_folder(){
		$folderType='';
		extract($_POST);
		$folderType = isset($_POST['folderType']) ? $_POST['folderType'] : 'Others';
		$data = " name ='".$name."' ";

		$data .= ", parent_id ='".$parent_id."' ";
	    $data .= ", folder_type ='".$folderType."' ";
		if(empty($id)){
			$data .= ", user_id ='".$_SESSION['login_id']."' ";
			
			$check = $this->db->query("SELECT * FROM folders where user_id ='".$_SESSION['login_id']."' and name  ='".$name."'")->num_rows;
			if($check > 0){
				return json_encode(array('status'=>2,'msg'=> 'Folder name already exist'));
			}else{
				$save = $this->db->query("INSERT INTO folders set ".$data);
				if($save)
				return json_encode(array('status'=>1));
			}
		}else{
			$check = $this->db->query("SELECT * FROM folders where user_id ='".$_SESSION['login_id']."' and name  ='".$name."' and id !=".$id)->num_rows;
			if($check > 0){
				return json_encode(array('status'=>2,'msg'=> 'Folder name already exist'));
			}else{
				$save = $this->db->query("UPDATE folders set ".$data." where id =".$id);
				if($save)
				return json_encode(array('status'=>1));
			}

		}
	}

	function delete_folder(){
		extract($_POST);
		$delete = $this->db->query("DELETE FROM folders where id =".$id);
		if($delete)
			echo 1;
	}
	function delete_file(){
		extract($_POST);
		$path = $this->db->query("SELECT file_path from files where id=".$id)->fetch_array()['file_path'];
		$delete = $this->db->query("DELETE FROM files where id =".$id);
		if($delete){
					unlink('assets/uploads/'.$path);
					return 1;
				}
	}
	function save_files_gtp() {
    // Validate and sanitize inputs
    $folder_id = $_POST['folder_id'] ?? null;
    $description = htmlspecialchars($_POST['description'] ?? '', ENT_QUOTES, 'UTF-8');
    $is_public = isset($_POST['is_public']) && $_POST['is_public'] == 'on' ? 1 : 0;
    $id = $_POST['id'] ?? null;
    $user_id = $_SESSION['login_id'] ?? null;

    if (empty($id)) {
        // Handle file upload for new entries
        if (!empty($_FILES['upload']['tmp_name'])) {
            $originalFileName = $_FILES['upload']['name'];
            $fileExtension = pathinfo($originalFileName, PATHINFO_EXTENSION);
            $baseFileName = pathinfo($originalFileName, PATHINFO_FILENAME);
            $timestamp = strtotime(date('Y-m-d H:i'));
            $fileName = $timestamp . '_' . $originalFileName;

            $uploadPath = 'assets/uploads/' . $fileName;
            if (move_uploaded_file($_FILES['upload']['tmp_name'], $uploadPath)) {
                // Check for duplicate files in the folder
                $query = "SELECT COUNT(*) as file_count FROM files WHERE SUBSTRING_INDEX(name, ' ||', 1) = ? AND folder_id = ? AND file_type = ?";
                $stmt = $this->db->prepare($query);
                $stmt->bind_param('sis', $baseFileName, $folder_id, $fileExtension);
                $stmt->execute();
                $result = $stmt->get_result()->fetch_assoc();

                if ($result['file_count'] > 0) {
                    $baseFileName .= ' ||' . $result['file_count'];
                }

                // Insert the file information into the database
                $insertQuery = "INSERT INTO files (name, folder_id, description, user_id, file_type, file_path, is_public) VALUES (?, ?, ?, ?, ?, ?, ?)";
                $insertStmt = $this->db->prepare($insertQuery);
                $insertStmt->bind_param('sissssi', $baseFileName, $folder_id, $description, $user_id, $fileExtension, $fileName, $is_public);
                
                if ($insertStmt->execute()) {
                    return json_encode(['status' => 1]);
                }
            }
        }
    } else {
        // Update existing file record
        $updateQuery = "UPDATE files SET description = ?, is_public = ? WHERE id = ?";
        $updateStmt = $this->db->prepare($updateQuery);
        $updateStmt->bind_param('sii', $description, $is_public, $id);

        if ($updateStmt->execute()) {
            return json_encode(['status' => 1]);
        }
    }

    return json_encode(['status' => 0, 'message' => 'Failed to save file']);
}


	function save_files(){
		extract($_POST);
		if(empty($id)){
		if($_FILES['upload']['tmp_name'] != ''){
					$fname = strtotime(date('y-m-d H:i')).'_'.$_FILES['upload']['name'];
			    	$move = move_uploaded_file($_FILES['upload']['tmp_name'],'../fms_2/assets/uploads/'. $fname);
		
					if($move){
						$file = $_FILES['upload']['name'];
						$file = explode('.',$file);
						$chk = $this->db->query("SELECT * FROM files where SUBSTRING_INDEX(name,' ||',1) = '".$file[0]."' and folder_id = '".$folder_id."' and file_type='".$file[1]."' ");
						if($chk->num_rows > 0){
							$file[0] = $file[0] .' ||'.($chk->num_rows);
						}
						$data = " name = '".$file[0]."' ";
						$data .= ", folder_id = '".$folder_id."' ";
						$data .= ", description = '".$description."' ";
						$data .= ", user_id = '".$_SESSION['login_id']."' ";
						$data .= ", file_type = '".$file[1]."' ";
						$data .= ", file_path = '".$fname."' ";
						if(isset($is_public) && $is_public == 'on')
						$data .= ", is_public = 1 ";
						else
						$data .= ", is_public = 0 ";
	$data .= ", size = 200";
	$data .= ", status = 1";
						$save = $this->db->query("INSERT INTO files set ".$data);
				
						if($save)
						return json_encode(array('status'=>1));
		
					}
		
				}
			}else{
						$data = " description = '".$description."' ";
						if(isset($is_public) && $is_public == 'on')
						$data .= ", is_public = 1 ";
						else
						$data .= ", is_public = 0 ";
						$save = $this->db->query("UPDATE files set ".$data. " where id=".$id);
						if($save)
						return json_encode(array('status'=>1));
			}

	}
	function file_rename(){
		extract($_POST);
		$file[0] = $name;
		$file[1] = $type;
		$chk = $this->db->query("SELECT * FROM files where SUBSTRING_INDEX(name,' ||',1) = '".$file[0]."' and folder_id = '".$folder_id."' and file_type='".$file[1]."' and id != ".$id);
		if($chk->num_rows > 0){
			$file[0] = $file[0] .' ||'.($chk->num_rows);
			}
		$save = $this->db->query("UPDATE files set name = '".$name."' where id=".$id);
		if($save){
				return json_encode(array('status'=>1,'new_name'=>$file[0].'.'.$file[1]));
		}
	}
	function save_user(){
		extract($_POST);
		$data = " name = '$name' ";
		$data .= ", username = '$username' ";
		$data .= ", password = '$password' ";
		$data .= ", type = '$type' ";
		if(empty($id)){
			$save = $this->db->query("INSERT INTO users set ".$data);
		}else{
			$save = $this->db->query("UPDATE users set ".$data." where id = ".$id);
		}
		if($save){
			return 1;
		}
	}
}