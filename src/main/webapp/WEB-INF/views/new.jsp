<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup Your Doggy!</title>
</head>
<body>

	<h2>Enter Doggy Details</h2>
	<form action="add" method="post" modelAttriute="employee">
		<label for="id">Dog Identifier:</label>
		<input name="id" placeholder="enter id" />
		<br>
		
		<label for="breed">Dog Breed:</label>
		<input name="breed" placeholder="enter breed" />
		<br>
		
		<label for="name">Dog Name:</label>
		<input name="name" placeholder="enter name" />
		<br>
		
		<label for="size">Dog Size:</label>
		<input name="size" placeholder="enter size (s/m/l)" />
		<br>
		
		<button type="submit">Sign Up!</button>
	</form>

</body>
</html>