/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.service.impl;

import com.tt.pojos.Tour;
import com.tt.repository.TourRepository;
import com.tt.service.TourService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author trang
 */
@Service
public class TourServiceImpl implements TourService{
    @Autowired  
    private TourRepository tourRepository;

    @Override
    public List<Tour> getTours(String kw) {
        return this.tourRepository.getTours(kw);
    }
    
}
