/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import com.tt.pojos.Hotel;
import com.tt.service.HotelService;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author trang
 */
@RestController
public class ApiHotelController {

    @Autowired
    private HotelService hotelService;

    @GetMapping(path = "/api/rate-{rate}", produces = {
        MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<List<Hotel>> searchRate(@PathVariable(value = "rate") int rate) {
        try {
            List<Hotel> c = this.hotelService.searchRate(rate);

            return new ResponseEntity<>(c, HttpStatus.OK);
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }

    //List hotel
    @GetMapping("/api/listhotels/{page}")
    public ResponseEntity<List<Hotel>> listDiscounts(@PathVariable(value = "page") Integer page) {
        List<Hotel> discounts = this.hotelService.getHotels("", page);

        return new ResponseEntity<>(discounts, HttpStatus.OK);
    }

    //Delete Hotel
    @DeleteMapping(path = "/api/hotels/{idHotel}", produces = {
        MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<Hotel> deleteHotelById(@PathVariable(value = "idHotel") int idHotel) {
        if (this.hotelService.deleteHotelById(idHotel) == true) {
            return new ResponseEntity<>(HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }

    //GetHotel
    @GetMapping(path = "/api/hotels/{idHotel}", produces = {
        MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<Hotel> getHotelById(@PathVariable(value = "idHotel") int idHotel) {
        try {
            Hotel h = this.hotelService.getHotelbyId(idHotel);
            return new ResponseEntity<>(h, HttpStatus.OK);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }

    //UpdateHotel
    @PutMapping(path = "/api/hotels/{idHotel}", produces = {
        MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<Hotel> updateHotelById(@PathVariable(value = "idHotel") int idHotel,
            @Valid @RequestBody Hotel hotel) {

        if (this.hotelService.updateHotel(hotel, this.hotelService.getHotelbyId(idHotel)) == true) {
            return new ResponseEntity<>(HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
}
