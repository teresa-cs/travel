/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.service;

import com.tt.pojos.Tour;
import java.util.List;

/**
 *
 * @author trang
 */
public interface TourService {
    List<Tour> getTours(String kw);
    
}
