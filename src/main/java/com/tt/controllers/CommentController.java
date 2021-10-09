/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import com.tt.pojos.Cmt;
import com.tt.service.CommentService;
import com.tt.validator.WebAppValidator;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author anhtu
 */
@Controller
@ControllerAdvice
public class CommentController {
    
    
    @Autowired
    private CommentService commentService;
    
//    @Autowired
//    private WebAppValidator commentValidator;
//
//    @InitBinder
//    public void initBinder(WebDataBinder binder) {
//        binder.setValidator(commentValidator);
//    }
    
    @GetMapping("/addcomment")
    public String addcomment(Model model) {
        model.addAttribute("comment", new Cmt());
        return "addcomment";
    }
    
    @PostMapping("/addcomment")
    public String addcomment(Model model, @ModelAttribute(value = "comment") @Valid Cmt cmt,
     BindingResult result) {
        if (!result.hasErrors()) {

        if (this.commentService.addOrUpdate(cmt) == true) {
            return "redirect:/";
        } else {
            model.addAttribute("errMsg", "Something wrong!");
        }
        }

        return "addcomment";
    }
}
