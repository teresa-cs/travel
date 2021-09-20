/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author anhtu
 */
@Controller
public class HomeController {
    
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
       
    @RequestMapping("/")
    public String index(Model model){  
       return "index";
    }
}
