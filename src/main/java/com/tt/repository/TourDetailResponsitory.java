/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository;

import com.tt.pojos.TourDetail;
import java.util.List;

/**
 *
 * @author anhtu
 */
public interface TourDetailResponsitory {
   boolean addTourDetail(TourDetail tourDetail);
   
   TourDetail getTourDetailById(int id);
   
   boolean deleteTourDetail(int id);
   
   boolean updateTourDetail(TourDetail tourDetail);
}
