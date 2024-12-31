<?php
session_start();
//$staff = $_SESSION['userid'];
require_once("include/connection.php");
//require_once('./loginfile/functions.php');
//require_once('resultfunction.php');
//checkLogin2('1');



if (isset($_POST['save'])) {

    $firstrecordrow = $_POST ['firstrecordrow'];
    $sheetnumber = $_POST['sheet'];
    $fileidval = $_POST['fileid'];
    $folderval = $_POST['folderid'];
    //$_SESSION['foldersession'];
    $adminid=$_SESSION["login_id"];

   // $scorecolumn = $_POST['scorecolumn'];

    //echo"$firstrecordrow, $sheetnumber, $matriccolumn, $scorecolumn";
    //echo"$coursecode,$session";
    if ( $firstrecordrow !=0) {
	//echo"$firstrecordrow, $sheetnumber";
        //importing the file to the server
        $sFileExtension = "";
        $imgfile_name = $_FILES['filenames']['name']; // get client side file name
        $imgfile = $_FILES['filenames']['tmp_name']; // temporary file at server side 
		//$destination = "uploads/". $imgfile_name;
		//$answer = move_uploaded_file($_FILES['filenames']['tmp_name'],$destination);
        if ($imgfile_name) { // file uploaded 
	
            $aFileNameParts = explode(".", $imgfile_name);
            $sFileExtension = end($aFileNameParts); // part behind last dot
            if (($sFileExtension != "xls") && ($sFileExtension != "xlsx")) {
                print"<script language=javascript>alert(\"This  format of file will not be accepted.Choose a 2003 or 2007 excel format\")</script>";
                die();
            }
        }
        $imgfile_size = $_FILES['filenames']['size']; // size of uploaded file 
		//print  $imgfile_size;
        if ($imgfile_size == 0) {
            print"<script language=javascript>alert('Sorry. The upload of $imgfile_name has failed. Retry')</script>";
            header("Location: add_document.php");
            die();
           
        }
        //begin to process file and transfer to server
        // $final_filename ="$coursecode.xls";
        $final_filename = substr("Beneficiaries", 0, 7);
        $final_filename = "$final_filename.$sFileExtension";

        $newfile = $final_filename;

        /* == do extra security check to prevent malicious abuse== */
        if (is_uploaded_file($imgfile)) {
		//print $imgfile_name;
            /* == move file to proper directory == */
            if (!copy($imgfile, "$newfile")) {
                /* == if an error occurs the file could not be written, read or possibly does not exist == */
                print "Error Uploading File.";
               // exit();
            }
        }
        //$imgsize = GetImageSize($imgfile);

        //determine if excel 2007 or 2003 format
         $aFileNameParts = explode(".", $newfile);
         $sFileExtension = end($aFileNameParts); // part behind last dot
        if ($sFileExtension == "xlsx") {
        //        //2003 format
        //     require_once('C:/xampp/htdocs/meetingapp/lib/phpexcel/Classes/PHPExcel/Reader/Excel5.php');
        //     $objReader = new PHPExcel_Reader_Excel5();
        // } elseif ($sFileExtension == "xlsx") {
        //     //2007format
            require_once('C:/xampp/htdocs/meetingapp/lib/phpexcel/Classes/PHPExcel/Reader/Excel2007.php');
            $objReader = new PHPExcel_Reader_Excel2007();
        }

        $objReader->setReadDataOnly(true);
        $objPHPExcel = $objReader->load($newfile);
        $totalsheet = count($objPHPExcel->getAllSheets());


        //
        //creating and array to store the list of not registed student who offerd the course
        if (count($objPHPExcel->getAllSheets()) > $sheetnumber) {
            //define the sheet to use
            $objPHPExcel->setActiveSheetIndex($sheetnumber);
            $sheet = $objPHPExcel->getActiveSheet();
            $maxrows = $objPHPExcel->getActiveSheet()->getHighestRow();
            // print"$tobank<br/>";
            //echo"m $matriccolumn scr $scorecolumn <br> ";
            $anomalies = array();
            $n = 1;
            $totalrecord = 0;
            for ($i = $firstrecordrow; $i <= $maxrows; $i++) {
                $totalrecord++;

                /* $grade=grade($total);
                  $point=point($total); */

                /////////////////////////
                                    // imp
                    $userid="";
                    $name="";
                    $adminuser="";
                    $adminpassword="";
                  
                    $adminstatus="";
                
                                        //end imp

                    $userid=$sheet->getCell('A'. $i)->getCalculatedValue();
                    $userid=trim($userid);
                    //$name=strtoupper($name);
                    $name=$sheet->getCell('B'. $i)->getCalculatedValue();
                    $name=trim($name);
                    $name=strtoupper($name);

                    $adminuser=$sheet->getCell('C'. $i)->getCalculatedValue();
                    $adminuser=trim($adminuser);
                   // $bank=(strtoupper($bank));
                    $adminpassword=$sheet->getCell('D'. $i)->getCalculatedValue();
                    $adminpassword=trim($adminpassword);
                    //$daybirth=$sheet->getCell('D'. $i)->getCalculatedValue();
                    //$daybirth=PHPExcel_Style_NumberFormat::toFormattedString($sheet->getCell('D'. $i)->getCalculatedValue(), 'YYYY-MM-DD');
                 
                    $adminstatus="Employee";
                    $checkuser = mysqli_query($conn,"SELECT * FROM login_user where email_address= '$adminuser' AND file_to_view='$folderval'") or die (mysqli_error($con));

                    $userrow= mysqli_num_rows($checkuser);
                    if($userrow===0){
              
                $queryupdateresult = mysqli_query($conn,"INSERT IGNORE INTO login_user ( id,   name, email_address, user_password,created_by, user_status, file_to_view) 
             VALUES('','$name','$adminuser','$adminpassword','$adminid','$adminstatus','$folderval')");
                  // $queryupdateresult = mysqli_query($conn,"INSERT IGNORE INTO admin_login( id,   name,    admin_user,    admin_password, admin_status) 
                  // VALUES('','$name','$adminuser','$adminpassword','$adminstatus')");
                 //$queryfortotaltbl = mysql_query("INSERT INTO total_tbl(rowid,coursecod,regnum,testscore,examsscore,total,sessionv,semester,staffid) 
             //VALUES('1','$coursecode','$matric','$total','','','$session','$semester','$staff')");
             
                    
                
                    
                    
                         // Select users

                         $r = mysqli_query($conn,"SELECT * FROM login_user where email_address= '$adminuser' ") or die (mysqli_error($con));

                         $row = mysqli_fetch_array($r);
                       
                          $uid=$row['id'];
                    
                          foreach($fileidval as $file){
                            //$adminstatus=$file;
                    
                    
                    
                    /////////////////
                    //echo"$matric,$total<br>"; 
             
                   $queryupdateresult = mysqli_query($conn,"INSERT IGNORE INTO users_allocation ( id, userid, fileid, folderid,created_by, status, createdDate) 
                   VALUES('','$uid','$file','$folderval','$adminid',1, CURRENT_TIMESTAMP())");
                        }
                    }
                          //$filetoview=$row['file_to_view'];
                                /*$querycourse11=mysql_query("SELECT * FROM subjects WHERE departmentid='$course'");
            
                    while ($subectarray=mysql_fetch_array($querycourse11)){
                    $descript=$subectarray['description'];
                    $querylevel11=mysql_query("INSERT INTO enrolment(`regnum`,`subject`, `session`, `term`, `score`, `grade`) 
                    VALUES('$matric','$descript','$session','First','?','?')");
                    $querylevel11=mysql_query("INSERT INTO enrolment(`regnum`,`subject`, `session`, `term`, `score`, `grade`) 
                    VALUES('$matric','$descript','$session','Second','?','?')");
                    $querylevel11=mysql_query("INSERT INTO enrolment(`regnum`,`subject`, `session`, `term`, `score`, `grade`) 
                    VALUES('$matric','$descript','$session','Third','?','?')");
                    }
                    */
             
        } 
            if($queryupdateresult >0){
    //delete the file from the result file server
           
            //  NOT ANOMALY FOUND OR NO RECORD IN THE SPECIFIED ACTIVE SHEET
            //$querynoresult=mysql_query("select regnum FROM testscore_tbl WHERE(`courseunitid`='9' AND `sesionid`='1'  AND  `score`='30')");
 unlink($newfile);
            //echo "<center>$totalrecord records for $coursecod for $session Session $semester Semester Processed</center>";
            $_SESSION['record_processed']="<center>$totalrecord records Processed</center>";
            header("Location: add_document.php");
			
} 


     
    
    }//end of coursecode and session not empty
//echo"$option";
}//end of isset import
}
?>