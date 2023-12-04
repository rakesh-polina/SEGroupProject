<?php
//PHP code for customer login
include 'connection.php';

$name=$_POST['userid'];
$password=$_POST['password']; 

$q="SELECT * FROM customer where customer_id='$name' and customer_pswrd='$password'";

$result=mysqli_query($con,$q);

$num = mysqli_num_rows($result);

	if(mysqli_num_rows($result) > 0){

		$_SESSION['userid'] = $name;
		header('location:home.php');

	}else{
		
		echo '<script language=javascript>alert("Login Unsuccessful")</script>';
		//header('location:index.php');
		include 'index.php';
	}

?>