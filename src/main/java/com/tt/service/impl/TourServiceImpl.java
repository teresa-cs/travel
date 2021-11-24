/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.tt.pojos.Place;
import com.tt.pojos.Tour;
import com.tt.pojos.TourDetail;
import com.tt.repository.TourRepository;
import com.tt.service.TourService;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author trang
 */
@Service
public class TourServiceImpl implements TourService {

    @Autowired
    private TourRepository tourRepository;
    @Autowired
    private Cloudinary cloudinary;

    @Override
    public List<Tour> getTours(String kw, int page) {
        return this.tourRepository.getTours(kw, page);
    }

    @Override
    public long countTour() {
        return this.tourRepository.countTour();
    }

    @Override
    public Tour getTourbyId(int id) {
        return this.tourRepository.getTourbyId(id);
    }

    @Override
    public Place getPlacebyId(int id) {
        return this.tourRepository.getPlacebyId(id);
    }

    @Override
    public List<TourDetail> getTourDetail(int id) {
        return this.tourRepository.getTourDetail(id);
    }

    @Override
    public boolean addOrUpdate(Tour tour) {
        try {
            Map r = this.cloudinary.uploader().upload(tour.getFile().getBytes(),
                    ObjectUtils.asMap("resource_type", "auto"));
            tour.setAvt((String) r.get("secure_url"));
            return this.tourRepository.addOrUpdate(tour);
        } catch (IOException ex) {
            System.err.print("===ADD TOUR===" + ex.getMessage());
        }
        return false;
    }
    
    @Override
    public long countDetail(int id) {
        return this.tourRepository.countDetail(id);
    }

    @Override
    public boolean deleteTour(int id) {
        return this.tourRepository.deleteTour(id);
    }

    @Override
    public boolean updateTour(Tour newTour, Tour oldTour) {
        
        oldTour.setName(newTour.getName());
        oldTour.setBegindate(newTour.getBegindate());
        oldTour.setEnddate(newTour.getEnddate());
        oldTour.setDays(newTour.getDays());
        oldTour.setMeetingplace(newTour.getMeetingplace());
        oldTour.setPrice(newTour.getPrice());
        oldTour.setIdPlace(newTour.getIdPlace());
        
        return this.tourRepository.updateTour(oldTour);
    }

    @Override
    public List<Tour> bestTour() {
        return this.tourRepository.bestTour();

    }
}
