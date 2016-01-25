package com.trnrzy.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
 
/**
 * Handles requests for the products page.
 */
@Controller
public class ProductController {
     
    @RequestMapping(value="/products")
    public ModelAndView showProducts() {
        ModelAndView model = new ModelAndView("products");
        return model;
    }
     
}