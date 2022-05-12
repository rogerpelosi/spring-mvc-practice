<%@ 
	page 
	language="java" 
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" 
	isELIgnored="false"
%>

<%@ 
	taglib 
	prefix="c" 
	uri="http://java.sun.com/jsp/jstl/core"
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doggy App</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

	<section class="text-center mb-5">
		<h1>Welcome to Doggy Daycare!</h1>
		<a href="new">sign your dog up here</a>
	</section>
	
	<h2>Current Doggy Rotation:</h2>
	<table border="1" class="table">
	
		<tr>
			<th class="bg-warning text-dark text-center">ID</th>
			<th class="bg-warning text-dark text-center">Breed</th>
			<th class="bg-warning text-dark text-center">Name</th>
			<th class="bg-warning text-dark text-center">Size</th>
			<th class="bg-warning text-dark text-center">Actions</th>
		</tr>
		
		<c:forEach items="${dogs}" var="dog">
			<tr>
				<td class="text-center">${dog.id}</td>
				<td class="text-center">${dog.breed}</td>
				<td class="bg-success p-2 text-dark bg-opacity-25 text-center">
					<a href="result/${dog.id}">${dog.name}</a>
				</td>
				<td class="text-center">${dog.size}</td>
				<td class="text-center">
					<a href="delete/${dog.id}">Delete ${dog.name} from your rotation</a>
				</td>
			</tr>
		</c:forEach>
		
	</table>
	
</body>
</html>