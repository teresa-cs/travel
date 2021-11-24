/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import com.tt.pojos.TourDetail;
import com.tt.service.TourDetailService;
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
 * @author anhtu
 */
@RestController
public class ApitTourDetailController {

    @Autowired
    private TourDetailService tourDetailService;

    // Get details of tour
    @GetMapping(path = "/api/tourdetails/{id}", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<TourDetail> getTourDetailById(@PathVariable(value = "id") Integer id) {
        try {
            TourDetail td = this.tourDetailService.getTourDetailById(id);
            return new ResponseEntity<>(td, HttpStatus.OK);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }

    //Delete Details of tour
    @DeleteMapping(path = "/api/tourdetails/{id}", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<TourDetail> deleteTourDetail(@PathVariable("id") Integer id) {
        if (this.tourDetailService.deleteTourDetail(id) == true) {
            return new ResponseEntity<>(HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }

    //Update Detail of Tour
    @PutMapping(path = "/api/tourdetails/{id}", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<TourDetail> updateTourDetail(@PathVariable("id") Integer id,
            @Valid @RequestBody TourDetail tourDetail) {
        if (this.tourDetailService.updateTourDetail(tourDetail,
                this.tourDetailService.getTourDetailById(id)) == true) {
            return new ResponseEntity<>(HttpStatus.OK);
        }

        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }
}
