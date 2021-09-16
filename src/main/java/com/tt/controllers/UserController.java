/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import com.tt.pojos.User;
import com.tt.service.UserService;
import javax.validation.constraints.Positive;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author trang
 */
@Controller
public class UserController {
    @Autowired
    private UserService UserDetailsService;

    @GetMapping("/login")
    public String login(Model model) {
        return "login";
    }
    
     @GetMapping("/register")
    public String registerView(Model model) {
        model.addAttribute("user", new User());
        return "register";
    }

    @PostMapping("/register")
    public String register(Model model, @ModelAttribute(value = "user") User user) {
        String errMsg = "";
        if (user.getPassword().equals(user.getConfirmPassword())) {
            if (this.UserDetailsService.addUser(user) == true) {
                return "redirect:/login";
            } else {
                errMsg = "Da co loi xay ra";
            }
        } else {
            errMsg = "Mat khau khong khop";
        }
        model.addAttribute("errMsg", errMsg);

        return "register";
    }

}
