<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup Your Doggy!</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

	<h2 class="ms-3">Enter Doggy Details</h2>
	<form action="add" method="post" modelAttriute="employee" class="ms-3">
		<label for="id" class="form-label">Dog Identifier:</label>
		<input name="id" placeholder="enter id" class="form-control"/>
		<br>
		
		<label for="breed" class="form-label">Dog Breed:</label>
		<input name="breed" placeholder="enter breed" class="form-control"/>
		<br>
		
		<label for="name" class="form-label">Dog Name:</label>
		<input name="name" placeholder="enter name" class="form-control"/>
		<br>
		
		<label for="size" class="form-label">Dog Size:</label>
		<input name="size" placeholder="enter size (s/m/l)" class="form-control"/>
		<br>
		
		<input type=button value="Back to Rotation" onCLick="history.back()" class="btn btn-primary">
		<button type="submit" class="btn btn-primary">Sign Up!</button>
	</form>

</body>
</html>