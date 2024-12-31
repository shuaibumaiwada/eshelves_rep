<?php
session_start();
 require_once("include/connection.php"); 
   //if(isset($_POST['save_comment'])){
    $decr='';
    $date='';
	$fidandpath=$_POST['inputValue'];
	$q_checkadmin = $conn->query("SELECT * FROM `users_description` WHERE `file_id` ='$fidandpath'") or die(mysqli_error());
  $v_checkadmin = $q_checkadmin->num_rows;
  if($v_checkadmin>0){
    while($file_dec=mysqli_fetch_array($q_checkadmin)){
     $decr=  $file_dec['file_decription'];
     $date=$file_dec['updated_date'];
      }

    }
$_SESSION['descr_old']=$decr;
//$_SESSION['date_old']=$date;
//$prev_new_des=  $date.'\n'.$decr;
?>


<?php echo $decr; ?>   
<?php //echo  $date; ?> 

