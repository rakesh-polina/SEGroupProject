<!doctype html>
<!--It is the first webpage html code-->
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="style.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Login Page</title>
  </head>
  <body>
 		<h1> ArtWork Management System</h1>
 		<div class="container">
 			<div class="row">
 				<div class="col-lg-6">
 					<h2>Login Form</h2>
 					<form action="validation.php" method="post">

 						<div class="form-group">
 							<label>User ID</label>
 							<input type="text" name="userid" class="form-control">
 						</div>
 						<div class="form-group">
 							<label>Password</label>
 							<input type="Password" name="password" class="form-control">
 						</div>
 						<button type="submit" class="btn btn-primary">Login</button>
 						
 					</form>

 				</div>
 				<div class="col-lg-6">
 					<h2>Signin Form</h2>
 					<form action="registration.php" method="post">

 						<div class="form-group">
 							<label>User ID</label>
 							<input type="text" name="userid" class="form-control">
 						</div>
 						<div class="form-group">
 							<label>Password</label>
 							<input type="Password" name="password" class="form-control">
 						</div>
						<div class="form-group">
 							<label>Customername</label>
 							<input type="text" name="custname" class="form-control">
 						</div>
 						<div class="form-group">
 							<label>Address</label>
 							<input type="text" name="custaddress" class="form-control">
 						</div>
 						<button type="submit" class="btn btn-primary">Signin</button>
 						
 					</form>

 				</div>
 			</div>
			<div class="row">
 				<div class="col-lg-6">
 					<h2>Admin Login</h2>
 					<form action="validation1.php" method="post">

 						<div class="form-group">
 							<label>User ID</label>
 							<input type="text" name="userid" class="form-control">
 						</div>
 						<div class="form-group">
 							<label>Password</label>
 							<input type="Password" name="password" class="form-control">
 						</div>
 						<button type="submit" class="btn btn-primary">Login</button>
 						
 					</form>

 				</div>
				<div class="col-lg-6">
 					<h2>Artist Login</h2>
 					<form action="validation2.php" method="post">

 						<div class="form-group">
 							<label>Artist ID</label>
 							<input type="text" name="artistid" class="form-control">
 						</div>
 						<div class="form-group">
 							<label>Password</label>
 							<input type="Password" name="password" class="form-control">
 						</div>
 						<button type="submit" class="btn btn-primary">Login</button>
 						
 					</form>

 				</div>
 			</div>
		</div>

 </body>
</html>