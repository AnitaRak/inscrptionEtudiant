<%@page import="java.util.List"%>
<%@page import="entité.Etudiant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Liste Etudiant</title>
        <style>
            table {
              font-family: arial, sans-serif;
              border-collapse: collapse;
              width: 100%;
            }

            td, th {
              border: 1px solid #dddddd;
              text-align: left;
              padding: 8px;
            }

            tr:nth-child(even) {
              background-color: #dddddd;
            }
        </style>
    </head>
    <body>
        <%
            Etudiant e = new Etudiant(); 
            List etudiants = e.findAll(e);
        
        %>
        <br>
        <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
        <h2>Liste des etudiants </h2>
        <br>
            <table>
                <tr>
                  <th>Nom</th>
                  <th>Prénom</th>
                </tr>
                <% for(int i = 0 ; i< etudiants.size() ; i++ ) {%>
                <tr>
                  <td><%= ((Etudiant)etudiants.get(i)).getNom() %></td>
                  <td><%= ((Etudiant)etudiants.get(i)).getPrenom() %></td>

                </tr>
                <% } %>

            </table>
        </div>
        <div class="col-md-2"></div>
    </body>
</html>
