<?php
//Registration PHP code for customer to signin
include 'connection.php';

$name=$_POST['userid'];
$password=$_POST['password']; 
$custname=$_POST['custname'];
$custaddress=$_POST['custaddress'];

$q="Insert into customer values('$name', '$custname','$password','$custaddress')";

$result=mysqli_query($con,$q);

//$num = mysqli_num_rows($result);

	if($result){

		echo '<script language=javascript>alert("Signin Successful Please Login")</script>';
		//header('location:index.php');
		include 'index.php';
		//print "<br>";
    		//echo "Signedin successfully!";

	}else{
		
		echo '<script language=javascript>alert("Signin Unsuccessful")</script>';
		//header('location:index.php');
		include 'index.php';
	}

?>