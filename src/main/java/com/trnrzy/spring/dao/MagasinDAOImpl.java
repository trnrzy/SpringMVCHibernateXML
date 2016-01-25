package com.trnrzy.spring.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.trnrzy.spring.model.Magasin;
 
public class MagasinDAOImpl implements MagasinDAO {
    private SessionFactory sessionFactory;
 
    public MagasinDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
 
    @Transactional
    public List<Magasin> list() {
        @SuppressWarnings("unchecked")
        List<Magasin> listMagasin = (List<Magasin>) sessionFactory.getCurrentSession()
                .createCriteria(Magasin.class)
                .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
 
        return listMagasin;
    }
    
    
    @Transactional
	public Magasin getMagasinByID(Integer idMagasin) {
	   Magasin magasin = (Magasin) sessionFactory.getCurrentSession()
                .get(Magasin.class,idMagasin);
	   return magasin; 
	}

    @Transactional
	public void addMagasin(Magasin magasin) {
		sessionFactory.getCurrentSession().saveOrUpdate(magasin);
	}
    
}