/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import com.tt.pojos.Cmt;
import com.tt.pojos.Hotel;
import com.tt.pojos.User;
import com.tt.service.HotelService;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author trang
 */
@RestController
public class ApiSearchHotel {
     @Autowired
    private HotelService hotelService;
     
     @GetMapping(path = "/api/rate-{rate}", produces = {
        MediaType.APPLICATION_JSON_VALUE })
    public ResponseEntity<List<Hotel>> searchRate(@PathVariable(value = "rate") int rate) {
            try {
                List<Hotel> c = this.hotelService.searchRate(rate);

                return new ResponseEntity<>(c, HttpStatus.OK);
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        
        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
  
        
    }
}
