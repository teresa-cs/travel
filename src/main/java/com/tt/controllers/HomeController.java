/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;



import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tt.pojos.Role;
import com.tt.service.RoleService;
import org.springframework.web.bind.annotation.GetMapping;


/**
 *
 * @author anhtu
 */

@Controller
public class HomeController {
    
    @Autowired
//    private RoleService roleService; 
    private LocalSessionFactoryBean sessionFactory;
    
    
    
    @RequestMapping("/")
    public String index(Model model){
      
        model.addAttribute("login","Hello");
        
       return "index";
    }
  
    
  
    
   
}
