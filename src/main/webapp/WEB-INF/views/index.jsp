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
</head>
<body>

	<h1>Welcome to Doggy Daycare!</h1>
	<a href="new">sign your dog up here</a>
	
	<h2>Current Doggy Rotation</h2>
	<table border="1">
	
		<tr>
			<th>ID</th>
			<th>Breed</th>
			<th>Name</th>
			<th>Size</th>
			<th>Actions</th>
		</tr>
		
		<c:forEach items="${dogs}" var="dog">
			<tr>
				<td>${dog.id}</td>
				<td>${dog.breed}</td>
				<td>${dog.name}</td>
				<td>${dog.size}</td>
				<td><a href="delete/${dog.id}">Delete ${dog.name} from your rotation</a></td>
			</tr>
		</c:forEach>
		
	</table>
	

</body>
</html>