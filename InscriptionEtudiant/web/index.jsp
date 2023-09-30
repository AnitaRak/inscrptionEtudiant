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
        <div class="col-md-4"></div>
        <div class="col-md-4">
        <h2>Saisie etudiant </h2>
        <form action="http://localhost:8080/InscriptionEtudiant/AjoutEtudiant" method="post">
            <div class="form-group">
              <label>Nom </label>
              <input type="text" class="form-control" name="nom" required >
            </div>
            <div class="form-group">
              <label>Prénom</label>
              <input type="text" class="form-control" name="prenom" required >
            </div>
            <div class="form-group">
              <label>Date Naissance</label>
              <input type="date" class="form-control" name="dateNaissance" required>
            </div>
            <div class="form-group">
              <label>Adresse</label>
              <input type="text" class="form-control" name="adresse" required >
            </div>
            <button type="submit" class="btn btn-primary">Enregistrer</button>
        </form>
        </div>
        <Strong><a href="http://localhost:8080/InscriptionEtudiant/listeEtudiant.jsp"> Voir liste des étudiants</a></Strong>
        <div class="col-md-4"></div>
    </body>
</html>
