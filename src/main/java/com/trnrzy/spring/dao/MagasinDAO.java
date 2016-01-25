package com.trnrzy.spring.dao;

import java.util.List;

import com.trnrzy.spring.model.Magasin;

public interface MagasinDAO {

	public List<Magasin> list();
	
	public Magasin getMagasinByID(Integer idMagasin);
	
	public void addMagasin(Magasin magasin);
}
