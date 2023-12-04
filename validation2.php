<?php
//PHP code for artist login
include 'connection.php';

$name=$_POST['artistid'];
$password=$_POST['password']; 

$q="SELECT * FROM artist where artist_id='$name' and artist_pswrd='$password'";

$result=mysqli_query($con,$q);

$num = mysqli_num_rows($result);

	if(mysqli_num_rows($result) > 0){

		$_SESSION['adminid'] = $name;
		header('location:artistpage.php');

	}else{
		
		echo '<script language=javascript>alert("Login Unsuccessful")</script>';
		//header('location:index.php');
		include 'index.php';
	}

?>