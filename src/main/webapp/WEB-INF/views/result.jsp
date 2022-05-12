<%@ 
	page 
	language="java" 
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" 
	isELIgnored="false"
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

	<section class="d-flex justify-content-center mt-5">
		<div class="card" style="width: 18rem;">
	  <img src="https://www.nicepng.com/png/detail/96-962151_doberman-dog-silhouette-clip-art-dog-silhouette-png.png" class="card-img-top" alt="...">
	  <div class="card-body">
	    <h5 class="card-title text-warning">${dog.name}</h5>
	    <p class="card-text">${dog.name} is a ${dog.breed} (${dog.size}). ${dog.name}'s rotation ID is ${dog.id}!</p>
	    <input type=button value="Back to Rotation" onCLick="history.back()" class="btn btn-primary">
	  </div>
	</div>
	
	</section>


</body>
</html>