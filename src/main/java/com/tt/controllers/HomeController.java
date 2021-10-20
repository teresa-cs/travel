/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;



/**
 *
 * @author anhtu
 */

@Controller
@ControllerAdvice
public class HomeController {
    
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
//    @ModelAttribute
//    public void common(Model model ){
//    
//    }
    
    @RequestMapping("/")
    public String index(Model model, HttpSession session){       
        model.addAttribute("currentUser", session.getAttribute("currentUser"));
       return "index";
    }
 
    @RequestMapping("/admin")
    public String admin(){
        return "admin";
    }
    
   
}
