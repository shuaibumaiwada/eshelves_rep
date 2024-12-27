<?php 
$conn = mysqli_connect("localhost","eshelves_maiwada1","Maiwada@1234","eshelves_meeting_db1"); 

//$conn = mysqli_connect("localhost","eshelves_Admin2","Maiwada@123","eshelves_meeting_db2"); 

if(!$conn){
	die("Connection error: " . mysqli_connect_error());	
}
?>
