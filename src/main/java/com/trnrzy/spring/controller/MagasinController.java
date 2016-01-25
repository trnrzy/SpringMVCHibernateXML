package com.trnrzy.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.trnrzy.spring.dao.MagasinDAO;
import com.trnrzy.spring.model.Magasin;
 
/**
 * Handles requests for the magasin page.
 */
@Controller
public class MagasinController {
     
    @Autowired
    private MagasinDAO magasinDao;
     
    @RequestMapping(value="/magasin")
    public ModelAndView showMagasin(Integer idMagasin) {
        Magasin magasin = magasinDao.getMagasinByID(2);
        ModelAndView model = new ModelAndView("magasin");
        model.addObject("magasin", magasin);
        return model;
    }
     
    
}