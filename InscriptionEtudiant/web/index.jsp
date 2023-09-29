<%-- 
    Document   : index.jsp
    Created on : 28 sept. 2023, 18:06:14
    Author     : Rado
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Saisie Etudiant</title>
    </head>
    <body>
        <br>
        <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
        <h2>Saisie des etudiants </h2>
        <form action="http://localhost:8080/InscriptionEtudiant/AjoutEtudiant" method="post">
            <div class="form-group">
              <label>Nom </label>
              <input type="text" class="form-control" name="nom"  >
            </div>
            <div class="form-group">
              <label>Prénom</label>
              <input type="text" class="form-control" name="prenom" >
            </div>
            <div class="form-group">
              <label>Date Naissance</label>
              <input type="date" class="form-control" name="dateNaissance" >
            </div>
            <div class="form-group">
              <label>Adresse</label>
              <input type="text" class="form-control" name="adresse" >
            </div>
            <button type="submit" class="btn btn-primary">Enregistrer</button>
        </form>
        </div>
        <div class="col-md-2"></div>
    </body>
</html>
