/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import com.tt.service.HotelService;
import com.tt.service.TourService;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



/**
 *
 * @author anhtu
 */

@Controller
@ControllerAdvice
public class HomeController {
    
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
     @Autowired
    private TourService tourService;
      @Autowired
    private HotelService hotelService;
    
//    @ModelAttribute
//    public void common(Model model ){
//    
//    }
    
    @RequestMapping("/")
    public String index(Model model, HttpSession session, @RequestParam(required = false) Map<String, String> params){       
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("currentUser", session.getAttribute("currentUser"));
        model.addAttribute("besttour", this.tourService.bestTour());
        model.addAttribute("hotel", this.hotelService.getHotels(params.get(params.get("kw")), page));
        
       return "index";
    }
 
    @RequestMapping("/admin")
    public String admin(){
        return "admin";
    }
    
    @RequestMapping("/contact")
    public String contact(Model model){
        return "contact";
    }
   
}
