<?php 
ob_start();
session_start();
$action = $_GET['action'];
//print "erdgf";
//include('admin_class.php');
//$crud = new Action();

 // $conn = mysqli_connect("localhost","eshelves_maiwada1","Maiwada@1234","eshelves_meeting_db1"); 
  $conn= new mysqli('localhost','eshelves_maiwada1','Maiwada@1234','eshelves_meeting_db1')or die("Could not connect to mysql".mysqli_error($con));

 if(!$conn){
 	die("Connection error: " . mysqli_connect_error());	
 }

//if (isset($_FILES['upload']) && $_FILES['upload']['error'] === UPLOAD_ERR_OK) {
    // File was uploaded without errors
 // $tmpName = $_FILES['upload']['tmp_name'];
    //if (is_uploaded_file($tmpName)) {
        // Handle the uploaded file
       // print "Pk";
   // }
//} else {
    // No valid file was uploaded
    // print "NO Pk";
//}
//exit();
 
		extract($_POST);
		
		
		if($_FILES['upload']['tmp_name'] != ''){
					$fname = strtotime(date('y-m-d H:i')).'_'.$_FILES['upload']['name'];
					$move = move_uploaded_file($_FILES['upload']['tmp_name'],'../fms_2/assets/uploads/'. $fname);
		print 	$move;
					if($move){
						$file = $_FILES['upload']['name'];
						$file = explode('.',$file);
						print_r($file);
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
	
print_r($data);
?>