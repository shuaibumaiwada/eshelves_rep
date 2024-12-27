<?php 
$conn = mysqli_connect("localhost","root","","meeting_db_ssg");

if(!$conn){
	die("Connection error: " . mysqli_connect_error());	
}
?>
