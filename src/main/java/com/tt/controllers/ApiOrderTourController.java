/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import com.tt.pojos.OrderTour;
import com.tt.pojos.Tour;
import com.tt.service.DiscountService;
import com.tt.service.OrderTourService;
import com.tt.service.TourService;
import java.util.Map;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author anhtu
 */
@RestController
public class ApiOrderTourController {

    @Autowired
    private OrderTourService orderTourService;
    
    @Autowired
    private TourService tourService;

    @PostMapping(path = "/api/ordertour-{tourId}", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<OrderTour> addOrderTour(@Valid @RequestBody Map<String, String> params,
            @PathVariable(value = "tourId") int id){
        try {
            Tour t= this.tourService.getTourbyId(id);
            String fullname = params.get("fullname");
            String gmail = params.get("gmail");
            String phone = params.get("phone");
            Integer adult = Integer.parseInt(params.get("adult"));
            Integer children = Integer.parseInt(params.get("children"));
            Integer total = Integer.parseInt(params.get("total"));
            OrderTour o = new OrderTour();
            
            if(params.get("iddiscount")!=null){
                Integer iddiscount = Integer.parseInt(params.get("iddiscount"));
                 o = this.orderTourService.addOrderTour(fullname, gmail, phone, adult, children, total, iddiscount,t);
            }else{
                o = this.orderTourService.addOrderTour(fullname, gmail, phone, adult, children, total,t);
            }

            return new ResponseEntity<>(o, HttpStatus.CREATED);
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }
}
