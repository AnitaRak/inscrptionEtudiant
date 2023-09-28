CREATE TABLE Etudiants(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    date_naissance DATE NOT NULL,
    adresse VARCHAR(100) NOT NULL
);

INSERT INTO  Etudiants (nom,prenom,date_naissance,adresse) VALUES("RAKOTOARISOA","Anita","2000-05-10","LOT VT 85 QA Andohanimandroseza");