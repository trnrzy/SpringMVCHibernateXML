package com.trnrzy.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.trnrzy.spring.dao.UserDAO;
import com.trnrzy.spring.model.User;
 
/**
 * Handles requests for the application home page.
 */
@Controller
public class UserController {
     
    @Autowired
    private UserDAO userDao;
    
    @RequestMapping(value="/")
    public ModelAndView user() {
        List<User> listUsers = userDao.list();
        ModelAndView model = new ModelAndView("user");
        model.addObject("userList", listUsers);
        return model;
    }
     
}