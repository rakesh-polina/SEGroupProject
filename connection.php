<?php
//For connecting with database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "artworkmanagement";

// Create connection
$con = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
}


//mysqli_close($conn);
?>
