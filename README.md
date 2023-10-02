# inscrptionEtudiant

Pour ce test, j'ai choisi de développer une petite application de gestion des inscriptions étudiantes, en utilisant les technologies suivantes conformément à vos directives :

- Java 8
- Hibernate
- MySQL
- Apache Tomcat
- Git
- JSP 

L'application se compose de trois pages principales :

1.Page de Saisie : Cette page permet aux utilisateurs d'entrer les informations des étudiants, telles que leur nom, prénom, adresse.

2. Page de Liste des Étudiants: Sur cette page, les utilisateurs peuvent consulter une liste complète de tous les étudiants enregistrés dans le système.

3. Page de Détail de l'Étudiant : Cette page affiche des informations détaillées sur un étudiant spécifique lorsqu'un utilisateur clique sur son nom dans la liste des étudiants. Cela permet d'accéder rapidement aux informations individuelles de chaque étudiant.

J'ai également choisi d'utiliser l'IDE NetBeans pour faciliter le développement et la gestion du projet.


Afin de mettre en route le projet, vous devez prendre en compte les éléments suivants :

Nom de la base de données : inscriptionEtudiant

Table : etudiants (id, nom, prenom, dateNaissance, adresse)

Voici le code de création de la table Etudiants en SQL :

```sql
CREATE TABLE Etudiants (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    date_naissance DATE NOT NULL,
    adresse VARCHAR(100) NOT NULL
);
```

Le port MySQL est défini par défaut sur 3306, mais s'il devait être différent dans votre cas, vous devez le modifier dans le fichier hibernate.cfg.xml en utilisant cette ligne de code :

```xml
<property name="hibernate.connection.url">jdbc:mysql://localhost:3306/inscriptionEtudiant</property>
```

Assurez-vous d'ajuster le port en conséquence dans le fichier hibernate.cfg.xml si nécessaire.


