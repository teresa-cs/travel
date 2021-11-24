/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.tt.pojos.TourDetail;
import com.tt.repository.TourDetailResponsitory;
import com.tt.service.TourDetailService;
import java.io.IOException;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author anhtu
 */
@Service
public class TourDetailServiceImpl implements TourDetailService{
    
    @Autowired
    private TourDetailResponsitory tourDetailResponsitory;
    @Autowired
    private Cloudinary cloudinary;

    @Override
    public boolean addTourDetail(TourDetail tourDetail) {
        try {
            Map r = this.cloudinary.uploader().upload(tourDetail.getFile().getBytes(),
                    ObjectUtils.asMap("resource_type", "auto"));
            tourDetail.setImage((String) r.get("secure_url"));
            return this.tourDetailResponsitory.addTourDetail(tourDetail);
        } catch (IOException ex) {
            System.err.print("===ADD TOURDETAIL===" + ex.getMessage());
        }
        return false;
    }

    @Override
    public TourDetail getTourDetailById(int id) {
        return this.tourDetailResponsitory.getTourDetailById(id);
    }

    @Override
    public boolean deleteTourDetail(int id) {
        return this.tourDetailResponsitory.deleteTourDetail(id);
    }

    @Override
    public boolean updateTourDetail(TourDetail newTourDetail, TourDetail oldTourDetail) {
        oldTourDetail.setName(newTourDetail.getName());
        oldTourDetail.setDescription(newTourDetail.getDescription());        
        return this.tourDetailResponsitory.updateTourDetail(oldTourDetail);
    }
    
}
