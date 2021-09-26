/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import com.tt.service.HotelService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author trang
 */
@Controller
@ControllerAdvice
public class HotelController {
    @Autowired
    private HotelService hotelService;
    
    @GetMapping("/hotel")
    public String tour(Model model, @RequestParam(required = false) Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("hotel", this.hotelService.getHotels(params.get(params.get("kw")), page));
        model.addAttribute("counter", this.hotelService.countHotel());
        return "hotel";
    }
    
}
