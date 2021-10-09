/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import com.tt.pojos.Hotel;
import com.tt.pojos.Orders;
import com.tt.service.HotelService;
import com.tt.service.OrderService;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author anhtu
 */
@Controller
//@ControllerAdvice
public class OrderController {
    
    @Autowired
    private OrderService orderService;
    
    @Autowired
    private HotelService hotelService;
    
//    @Autowired
//    private WebAppValidator orderValidator;
//    
//     @InitBinder
//    public void initBinder(WebDataBinder binder) {
//        binder.setValidator(orderValidator);
//    }
    
    
      @GetMapping("/hotel/order-{roomId}")
    public String order(Model model, @PathVariable(value = "roomId") int roomId) {
        model.addAttribute("order", new Orders());
        model.addAttribute("room", this.hotelService.getRoombyId(roomId));
        return "order";
    }
    

    
    @PostMapping("/hotel/order-{roomId}")
    public String add(Model model,@ModelAttribute(value = "order") @Valid Orders o,
           BindingResult result ) {
        if (!result.hasErrors()) {
           
            if (this.orderService.addOrUpdate(o) == true) {
                return "redirect:/";
            }else{
                model.addAttribute("errMsg", "Something wrong!");
            }
        }

        return "order";
    }
    

}
