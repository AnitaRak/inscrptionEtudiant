<%-- 
    Document   : detailEtudiant
    Created on : 29 sept. 2023, 10:02:11
    Author     : Rado
--%>

<%@page import="entité.Etudiant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Detail Etudiant</title>
    </head>
    <body>
        <% Etudiant e =(Etudiant) request.getAttribute("etudiantUn"); %>
        <br>
        <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
        <h2>A propos de : <% out.println(e.getPrenom() +" "+ e.getNom() ); %> </h2>
            <div class="card" style="width: 30rem;">
                <div class="card-body">
                    <p class="card-text">Nom : <%= e.getNom() %></p>
                    <p class="card-text">Prénom : <%= e.getPrenom() %></p>
                    <p class="card-text">Date Naissance : <%= e.getDate_naissance() %></p>
                    <p class="card-text">Adresse : <%= e.getAdresse() %></p>
                    <a href="http://localhost:8080/InscriptionEtudiant/listeEtudiant.jsp" class="card-link">Retour</a>
                </div>
            </div>
        </div>
        <div class="col-md-2"></div>
    </body>
</html>
