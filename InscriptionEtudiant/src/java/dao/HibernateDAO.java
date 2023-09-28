/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entité.BaseModele;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import javax.persistence.criteria.*;
import org.hibernate.Criteria;
import org.hibernate.criterion.Example;

/**
 *
 * @author Rado
 */
public class HibernateDAO {
    
    SessionFactory sf;

    public SessionFactory getSf() {
        return sf;
    }

    public void setSf(SessionFactory sf) {
        this.sf = sf;
    }
    
    public void insert(BaseModele m) throws Exception{
        Session s  = getSf().openSession();
        try {
            
            s.save(m);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        finally{
            s.close();
        }
    }
    
    public BaseModele load(BaseModele m) throws Exception{
        Session s  = getSf().openSession();
        BaseModele mo = new BaseModele();
        try {
            mo = (BaseModele)s.get(m.getClass(),new Integer(m.getId()));
        } catch (Exception e) {
            e.printStackTrace();
        }
        finally{
            s.close();
        }
        
        return mo;
    }
    
    public void update(BaseModele m) throws Exception{
        Session s  = getSf().openSession();
        Transaction t = s.beginTransaction();
        try {
            s.update(m);
            t.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
        finally{
            s.close();
        }
       
    }
    
    public void delete(BaseModele m) throws Exception{
        Session s  = getSf().openSession();
        Transaction t = s.beginTransaction();
        BaseModele mo = (BaseModele)s.get(m.getClass(),new Integer(m.getId()));
        try {
            s.delete(mo);
            t.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
        finally{
            s.close();
        }
       
    }
    
    public List<BaseModele> findAll(BaseModele m) throws Exception{
        Session s  = getSf().openSession();
        List l = new ArrayList();
        try {
            Example addressExample = Example.create(m);
            Criteria criteria = s.createCriteria(m.getClass()).add(addressExample);
            l = criteria.list();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        finally{
            s.close();
        }
        
        return l;
    }
    
}
