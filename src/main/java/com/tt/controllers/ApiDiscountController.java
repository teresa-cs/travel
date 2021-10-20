/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import com.tt.pojos.Discount;
import com.tt.service.DiscountService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author anhtu
 */
@RestController
public class ApiDiscountController {

    @Autowired
    private DiscountService discountService;

    @GetMapping("/api/discounts")
    public ResponseEntity<List<Discount>> listDiscounts() {
        List<Discount> discounts = this.discountService.getDiscounts("", 1);

        return new ResponseEntity<>(discounts, HttpStatus.OK);
    }

    @GetMapping(path = "/api/discounts/{id}", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<Discount> getDiscountById(@PathVariable(value = "id") Integer id) {
        try {
            Discount d = this.discountService.getDiscountById(id);
            return new ResponseEntity<>(d, HttpStatus.OK);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
    
    @GetMapping(path = "/api/discount/{code}", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<Discount> getDiscountByCode(@PathVariable(value = "code") String code){
        try {
            Discount d = this.discountService.getDiscountByCode(code);
            return new ResponseEntity<>(d, HttpStatus.OK);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }

    @DeleteMapping("/api/discounts/{id}")
    public ResponseEntity<Discount> deleteDiscount(@PathVariable("id") Integer id) {
        if(this.discountService.deleteDiscount(id) == true){
            return new ResponseEntity<>(HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        
    }
    
}
