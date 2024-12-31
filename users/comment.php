<?php
session_start();
 require_once("include/connection.php"); 
   if(isset($_POST['fileidAndPath'])){
	
	 $fidandpath=$_POST['fileidAndPath'];
	 $uid=$_POST['userid'];
	 $admid=$_POST['adminid'];
	 $desc=$_POST['editorContent'];
	 
	 $user_status=1;
	 $fidandpathArray=explode(',',$fidandpath);
	 $fid=$fidandpathArray[0];
	 $filep=$fidandpathArray[1];
	 $decr_old=$_SESSION['descr_old'];
	 $date_old=$_SESSION['date_old'];
	 
	 $todate=date('d-m-y H:i:s');
	 $desc_first=$todate.''.$desc;
	 	 $prev_new_desc= $decr_old.' '.$todate.''.$desc;
	//print $update=;
	//exit();
    
	//id, file_id, file_path, user_id, admin_id, file_description, updated_date,status;
	$q_checkadmin = $conn->query("SELECT * FROM `users_description` WHERE `file_id` = '$fid' AND user_id=$uid") or die(mysqli_error());
		$v_checkadmin = $q_checkadmin->num_rows;
		if($v_checkadmin == 1){

			$conn->query("UPDATE `users_description` SET file_decription='$prev_new_desc', updated_date=CURRENT_TIMESTAMP() WHERE user_id='$uid' AND file_id='$fid'") or die(mysqli_error());
			echo '
				<script type = "text/javascript">
					alert("Record Successfully Updated");
					window.location = "add_document.php";
				</script>
			';
			
		}else{
			$conn->query("INSERT INTO `users_description` VALUES('','$filep','$fid', '$desc_first','$uid', '$admid', CURRENT_TIMESTAMP(), '$user_status')") or die(mysqli_error());
			echo '
				<script type = "text/javascript">
					alert("Record Successfully Saved");window.location = "home2.php";
				</script>
			';
		}
	}	


 ?>