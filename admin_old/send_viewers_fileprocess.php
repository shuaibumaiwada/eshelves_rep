<?php
session_start();
//$staff = $_SESSION['userid'];
require_once("include/connection.php");
//require_once('./loginfile/functions.php');
//require_once('resultfunction.php');
//checkLogin2('1');
if (isset($_SESSION['admin_user']) ) {
    $adminuser=$_SESSION['admin_user'];
   }
   if (isset($_SESSION["login_id"]) ) {
     $deskofficer=$_SESSION["login_id"];
    }


if (isset($_POST['save'])) {

    //$firstrecordrow = $_POST ['firstrecordrow'];
    $recipientid = $_POST['recipient'];
    $fileidval = $_POST['fileid'];
    $folderval = $_POST['folderid'];
                         // Select users

                         $r11 = mysqli_query($conn,"SELECT * FROM folders where user_id=$recipientid  AND folder_type='Movement' ") or die (mysqli_error($con));

                         $row1 = mysqli_fetch_array($r11);
                       
                         $recipientfolderid=$row1['id'];
//exit();
                    
                          foreach($fileidval as $file){
                    /////////////////
                    //echo"$matric,$total<br>"; 
             
                    $r = mysqli_query($conn,"SELECT * FROM files where id= '$file' ") or die (mysqli_error($con));

                    $row = mysqli_fetch_array($r);
                  
                     //$recipientfolderid=$row['id'];
                     $filename=$row['name'];
                     $decrp=$row['description'];
                     $userid=$row['user_id'];
                     $foldid=$row['folder_id'];
                     $filetype=$row['file_type'];
                     $filepath=$row['file_path'];
                     $fsize=$row['size'];

                   //$queryinsertresult = mysqli_query($conn,"INSERT IGNORE INTO admin_allocation ( id, userid, fileid, folderid, status, createdDate, deskofficer) 
                   //VALUES('','$recipientid','$file','$folderval',1, CURRENT_TIMESTAMP(), $deskofficer)");

                   $queryinsertresult = mysqli_query($conn,"INSERT IGNORE INTO files ( id, name, description, user_id, folder_id, file_type, file_path, is_public, date_updated, size, status) 
                   VALUES('','$filename','$decrp','$recipientid','$recipientfolderid', '$filetype', '$filepath', 0, CURRENT_TIMESTAMP(), '$fsize',1)");
                        }
                    }
                       
            if($queryinsertresult >0){
            //echo "<center>$totalrecord records for $coursecod for $session Session $semester Semester Processed</center>";
            $_SESSION['record_processed']="<center>$totalrecord records Processed</center>";
            header("Location: add_document.php");
			
} 


?>