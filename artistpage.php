<!--Artist webpage-->
<!DOCTYPE html>
<html>
<head>
    <title> Artist Page </title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<h1> ArtWork Management System</h1>
<div class="container">
 			<div class="row">
 				<div class="col-lg-6">
 					<h3>Insert Artwork</h3>
 					<form action="insertartwork.php" method="post">

 						<div class="form-group">
 							<label>Artwork name</label>
 							<input type="text" name="artworkname" class="form-control">
 							<label>Artwork ID</label>
 							<input type="text" name="artworkid" class="form-control">
 							<label>Price</label>
 							<input type="text" name="price" class="form-control">
							<label>Category</label>
 							<input type="text" name="category" class="form-control">
 						</div>
 						<button type="submit" class="btn btn-primary">Insert</button>
 						
 					</form>

 				</div>
		</div>
		<div class="row">
 				<div class="col-lg-6">
 					<h3>Delete artwork</h3>
 					<form action="deleteartwork.php" method="post">

 						<div class="form-group">
 							<label>Artwork ID</label>
 							<input type="text" name="artworkid" class="form-control">
 						</div>
 						<button type="submit" class="btn btn-primary">Delete</button>
 						
 					</form>

 				</div>
		</div>
	<div class="row">
 				<div class="col-lg-6">
 					<form action="viewart.php" method="post">
 						<button type="submit" class="btn btn-primary">View Artwork</button>
 						
 					</form>

 				</div>
		</div>
</div>
<a href='/index.php'><button>back</button>
</body>
</html>