/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.tt.pojos.Tour;
import com.tt.service.TourService;
import java.io.IOException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author anhtu
 */
@Controller
public class TourController {
    @Autowired
    private TourService tourService;
    
    @Autowired
    private Cloudinary cloudinary;

    @RequestMapping("/tour")
    public String tour(Model model) {
        model.addAttribute("tour",this.tourService.getTours(""));
        return "tour";
    }

    @GetMapping("/tour/tour-place")
    public String tour_place(Model model) {
        return "tour-place";
    }

    @GetMapping("/signup")
    public String signup(Model model) {
        model.addAttribute("signup", new Tour());
        return "signup";
    }
    
    @PostMapping("/signup")
      public @ResponseBody String add(@ModelAttribute(value ="signup") Tour tour) {

        try {
           this.cloudinary.uploader().upload(tour.getFile().getBytes(),
                    ObjectUtils.asMap("resource_type", "auto"));
//            String img = (String) r.get("secure_url");
            return "redirect:/";
        } catch (IOException ex) {
            System.err.print("===ADD TOUR===" + ex.getMessage());
        }
        return "signup";
    }
}
