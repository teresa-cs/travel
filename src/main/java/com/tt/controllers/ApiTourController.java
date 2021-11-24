package com.tt.controllers;

import com.tt.pojos.Tour;
import com.tt.service.TourService;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author anhtu
 */
@RestController
@Validated
public class ApiTourController {

    @Autowired
    private TourService tourService;

    @GetMapping("/api/listtours/{page}")
    public ResponseEntity<List<Tour>> listDiscounts(@PathVariable(value = "page") Integer page) {
        List<Tour> discounts = this.tourService.getTours("", page);

        return new ResponseEntity<>(discounts, HttpStatus.OK);
    }

    //Get Tour
    @GetMapping(path = "/api/tours/{id}", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<Tour> getDiscountById(@PathVariable(value = "id") Integer id) {
        try {
            Tour t = this.tourService.getTourbyId(id);
            return new ResponseEntity<>(t, HttpStatus.OK);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
    
    //Delete Tour
    @DeleteMapping(path = "/api/tours/{id}", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<Tour> deleteTour(@PathVariable("id") Integer id) {
        if (this.tourService.deleteTour(id) == true) {
            return new ResponseEntity<>(HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }

    //Update Tour
    @PutMapping(path = "/api/tours/{id}", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<Tour> updateTour(@PathVariable("id") Integer id,
            @Valid @RequestBody Tour tour) {
        if (this.tourService.updateTour(tour,
                this.tourService.getTourbyId(id)) == true) {
            return new ResponseEntity<>(HttpStatus.OK);
        }

        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }

}
