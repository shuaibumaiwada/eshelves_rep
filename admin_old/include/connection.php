<?php 
//   $servername='localhost';
//   $username='abudekdl_shuaib';
//   $password='F%ttYzG9aS}8';
//   $dbname='abudekdl_fins_db';
 $conn = mysqli_connect("localhost","eshelves_maiwada1","Maiwada@1234","eshelves_meeting_db1"); 

 if(!$conn){
 	die("Connection error: " . mysqli_connect_error());	
 }

//$conn =mysqli_connect("localhost","eshelves_Admin2","Maiwada@123","eshelves_meeting_db2")  or die("Could not connect to mysql".mysqli_error($con));

?>