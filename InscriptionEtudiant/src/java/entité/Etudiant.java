package entité;

import config.HibernateUtil;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;


@Entity
@Table(name = "Etudiants")
public class Etudiant extends BaseModele {
    
    @Column(name = "nom")
    String nom ;
    
    @Column(name = "prenom")
    String prenom ;
    
    @Column(name = "date_naissance")
    Date date_naissance;
    
    @Column(name = "adresse")
    String adresse ; 

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public Date getDate_naissance() {
        return date_naissance;
    }

    public void setDate_naissance(Date date_naissance) {
        this.date_naissance = date_naissance;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public Etudiant() {
    }

    public Etudiant(String nom, String prenom, Date date_naissance, String adresse) {
        this.nom = nom;
        this.prenom = prenom;
        this.date_naissance = date_naissance;
        this.adresse = adresse;
    }
    
    
    
    
    
    
}
