/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;


import dao.HibernateDAO;
import entité.BaseModele;
import entité.Etudiant;
import java.io.File;
import java.util.List;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

      

/**
 *
 * @author Rado
 */
public class TestHibernate {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        /*Configuration config = new Configuration();
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
        config.configure();
        HibernateDAO h = new HibernateDAO();
        h.setSf(sessionFactory);*/
        /*Departement d = new Departement("RH");
        try {
            //d.insertDepartement(d);
        } catch (Exception ex) {
            ex.printStackTrace();
        }*/
        Etudiant e = new Etudiant();
        //e.setNom("Rado");
        //e.setIdDept(1);
        //e.setId(13);
        try {
            //Etudiant em = (Etudiant)h.load(e);
            //System.out.println("nom de l 'etudiant  :"+ em.);
            
            //h.update(e); /* update */
            //h.delete(e); /* delete */
           //h.insert(e); /*isert*/
           //Employer emp = (Employer)h.load(e);
                /*List emp = h.findAll(e);
                System.out.println("sizee :"+emp.size());
                for(int i = 0 ; i < emp.size() ; i++){
                     System.out.println("nom :"+((Etudiant)emp.get(i)).getNom());
                }*/
        
            List et = e.findAll(e);
            System.out.println("isaaaaa " + et.size());
                
           
           
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        
    }
    
}
