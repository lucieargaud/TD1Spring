<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Afficher étudiants</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</head>
<body>

<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nom</th>
      <th scope="col">Prénom</th>
      <th scope="col">Téléphone</th>
      <th scope="col">Email</th>
    </tr>
  </thead>
  <tbody>
<c:forEach var="etu" items="${listeEtudiants}">
    <tr>
     <th scope="row"> <a href="getId?id=${ etu.getId()}"> ${etu.getId()} </a> </th>
      <td>${etu.getNom() }</td>
      <td>${etu.getPrenom() }</td>
      <td>${etu.getTelephone() }</td>
      <td>${etu.getEmail() } </td>
      <td><button type="button"> <a href="supprimer?id=${ etu.getId()}">Supprimer</a></button></td>
    </tr>
    
  </c:forEach>
    
  </tbody>
</table>

</body>
</html>