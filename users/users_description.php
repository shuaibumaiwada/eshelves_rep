<?php
session_start();
 require_once("include/connection.php"); 
   if(isset($_REQUEST['userfileid'])){
    $decr='';
    $date='';
	$fidandpath=$_REQUEST['userfileid'];
    $admin=$_SESSION['login_id'];
	// $q_checkadmin = $conn->query("SELECT * FROM `users_description` 
    // INNER JOIN login_user ON users_description.user_id=login_user.id 
    // WHERE `file_id` ='$fidandpath' AND admin_id=$admin ") or die(mysqli_error());
    $q_checkadmin = $conn->query("SELECT * FROM `users_description` 
    INNER JOIN login_user ON users_description.user_id=login_user.id 
    WHERE admin_id=$admin ") or die(mysqli_error());
    $v_checkadmin = $q_checkadmin->num_rows;

    if($v_checkadmin>0){
    while($file_dec=mysqli_fetch_array($q_checkadmin)){
     $decr=  $file_dec['file_decription'];
     $date=$file_dec['updated_date'];
     $username=$file_dec['name'];
     $filepath=  $file_dec['file_path'];
      
     print"<div class='card-body ps-10 md-10' style=' background-color: #ffffff;
     border: 1px solid #0000001c;
     border-radius: 5px;'>";
    
        $_SESSION['descr_old']=$decr;
        //$_SESSION['date_old']=$date;
        //$prev_new_des=  $date.'\n'.$decr;
        echo '<b>'.$username.' on ['.$filepath.']</b><hr ></hr>';
        echo $decr.'<br><br>';  
    }
}
}?> 
</div>
