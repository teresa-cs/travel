/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author trang
 */
@Controller
public class TourController {
    
       @RequestMapping("/tour")
    public String tour(Model model){      
        model.addAttribute("tour","");        
       return "tour";
    }
       
      @GetMapping("/tour/tour-place")
    public String tour_place(Model model){      
        model.addAttribute("tour-place","");        
       return "tour-place";
    }
    
}
