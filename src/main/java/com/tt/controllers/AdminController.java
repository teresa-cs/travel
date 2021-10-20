/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import com.tt.pojos.Discount;
import com.tt.service.DiscountService;
import com.tt.validator.DiscountValidator;
import java.io.IOException;
import java.util.Map;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author anhtu
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    
    @Autowired 
    private DiscountService discountService;
    
    @Autowired
    private DiscountValidator discountValidator;
    
    @InitBinder
    public void initBinder(WebDataBinder binder){
        binder.setValidator(discountValidator);
    }
    
    @GetMapping("/discount")
    public String discount(Model model, @RequestParam(required = false) Map<String, String> params){
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("discounts", this.discountService.getDiscounts(params.get("kw"), page));
        model.addAttribute("counter", this.discountService.countDiscount());
        model.addAttribute("discount", new Discount());
        model.addAttribute("a", this.discountService.getDiscountByCode("HTEL4F"));
        return "discount";
    }
    
    @PostMapping("/discount")
    public String discount(@ModelAttribute(value = "discount") @Valid Discount discount,
            BindingResult result){
        if(!result.hasErrors()){
            if(this.discountService.addDiscount(discount) == true){
                return "redirect:/";
            }
        }
        return "discount";
    }
}
