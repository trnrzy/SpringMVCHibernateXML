package com.trnrzy.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
 
/**
 * Handles requests for the ticket page.
 */
@Controller
public class TicketController {
     
    @RequestMapping(value="/ticket")
    public ModelAndView showTicket() {
        ModelAndView model = new ModelAndView("ticket");
        return model;
    }
     
}