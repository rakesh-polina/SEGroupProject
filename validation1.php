<?php
//PHP code for admin login
include 'connection.php';

$name=$_POST['userid'];
$password=$_POST['password']; 

$q="SELECT * FROM admin where admin_id='$name' and admin_password='$password'";

$result=mysqli_query($con,$q);

$num = mysqli_num_rows($result);

	if(mysqli_num_rows($result) > 0){

		$_SESSION['userid'] = $name;
		header('location:adminpage.php');

	}else{
		
		echo '<script language=javascript>alert("Login Unsuccessful")</script>';
		//header('location:index.php');
		include 'index.php';
	}

?>