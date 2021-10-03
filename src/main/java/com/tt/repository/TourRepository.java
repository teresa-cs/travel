/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository;

import com.tt.pojos.Place;
import com.tt.pojos.Tour;
import com.tt.pojos.TourDetail;
import java.util.List;

/**
 *
 * @author trang
 */
public interface TourRepository {

    List<Tour> getTours(String kw, int page);

    Tour getTourbyId(int id);

    Place getPlacebyId(int id);

    long countTour();
    
    long countDetail(int id);

    List<TourDetail> getTourDetail(int id);
    
    boolean addOrUpdate(Tour tour);
    
    boolean deleteTour(int id);
}
