<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="saveEtuAvecForm" modelAttribute="etu">
		
		<div class="mb-3">
			<label for="inputidClient" class="form-label">Nom</label>
			<input type="text" name="nom" class="form-control"id="inputidClient">
		</div>
		
		<div class="mb-3">
			<label for="inputNumVol" class="form-label">Prénom</label>
			<input type="text" name="prenom" class="form-control"id="inputNumVol">
		</div>
		
		<div class="mb-3">
			<label for="inputidPassager" class="form-label">Téléphone</label>
			<input type="text" name="tel" class="form-control"id="inputidPassager">
		</div>
		
		<div class="mb-3">
			<label for="inputidPassager" class="form-label">Email</label>
			<input type="text" name="email" class="form-control"id="inputidPassager">
		</div>
	
		
		<button type="submit" class="btn btn-primary">Envoyer</button>
		<button type="reset" class="btn btn-danger">Annuler</button>
	</form>


</body>
</html>