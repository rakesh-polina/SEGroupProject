<!--Admin webpage-->
<!DOCTYPE html>
<html>
<head>
    <title>Admin Page</title>
<link rel="stylesheet" href="style.css">
</style>
</head>
<body >
<h1>ArtWork Management System</h1>
<div class="container">
 			<div class="row">
 				<div class="col-lg-6">
 					<h3>Insert Artist</h3>
 					<form action="insertartist.php" method="post">

 						<div class="form-group">
 							<label>Artist name</label>
 							<input type="text" name="artistname" class="form-control">
 							<label>Artist ID</label>
 							<input type="text" name="artistid" class="form-control">
 							<label>Password</label>
 							<input type="password" name="password" class="form-control">
							<label>Address</label>
 							<input type="text" name="address" class="form-control"><br><br>
 						</div>
 						<button type="submit" class="btn btn-primary">Insert</button>
 						
 					</form>

 				</div>
		</div><br><br><br>
		<div class="row">
 				<div class="col-lg-6">
 					<h3>Delete artist</h3>
 					<form action="deleteartist.php" method="post">

 						<div class="form-group">
 							<label>Artist ID</label>
 							<input type="text" name="artistid" class="form-control"><br><br>
 						</div>
 						<button type="submit" class="btn btn-primary">Delete</button>
 						
 					</form>

 				</div>
		</div><br><br>
	<div class="row">
 				<div class="col-lg-6">
 					<form action="viewartist.php" method="post">
 						<button type="submit" class="btn btn-primary">View Artists</button>
 						
 					</form>

 				</div>
		</div>
	<div class="row">
 				<div class="col-lg-6">
 					<form action="viewartworkadmin.php" method="post">
 						<button type="submit" class="btn btn-primary">View Artworks</button>
 						
 					</form>

 				</div>
		</div>

	<div class="row">
 				<div class="col-lg-6">
 					<form action="viewcustomers.php" method="post">
 						<button type="submit" class="btn btn-primary">View Customers</button>
 						
 					</form>

 				</div>
		</div>
</div>
<a href='/home.php'><button>back</button>
</body>
</html>