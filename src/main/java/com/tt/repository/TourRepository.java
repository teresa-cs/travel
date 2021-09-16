/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository;

import com.tt.pojos.Tour;
import java.util.List;

/**
 *
 * @author trang
 */
public interface TourRepository {
    List<Tour> getTours(String kw);
//    Tour getTourbyId(int tourId);
//    long countTour();
//    boolean addOrUpdate(Tour tour);
}
