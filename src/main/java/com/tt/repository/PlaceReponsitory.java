/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository;

import com.tt.pojos.Place;
import java.util.List;

/**
 *
 * @author anhtu
 */
public interface PlaceReponsitory {
    List<Place> getPlaces();
    Place getPlaceById(int id);
}
