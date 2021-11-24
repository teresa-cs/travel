/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.service.impl;

import com.tt.pojos.Place;
import com.tt.repository.PlaceReponsitory;
import com.tt.service.PlaceService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author anhtu
 */
@Service
public class PlaceServiceImpl implements PlaceService{
    
    @Autowired
    private PlaceReponsitory placeReponsitory;
    
    @Override
    public List<Place> getPlaces() {
        return this.placeReponsitory.getPlaces();
    }

    @Override
    public Place getPlaceById(int id) {
        return this.placeReponsitory.getPlaceById(id);
    }
    
}
