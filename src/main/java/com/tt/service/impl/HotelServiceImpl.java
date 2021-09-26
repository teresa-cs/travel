/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.service.impl;

import com.cloudinary.Cloudinary;
import com.tt.pojos.Hotel;
import com.tt.repository.HotelRepository;
import com.tt.repository.TourRepository;
import com.tt.service.HotelService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author trang
 */
@Service
public class HotelServiceImpl implements HotelService{
    @Autowired
    private HotelRepository hotelRepository;
    @Autowired
    private Cloudinary cloudinary;

    
    @Override
    public List<Hotel> getHotels(String kw, int page) {
        return this.hotelRepository.getHotels(kw, page);
    }

    @Override
    public Hotel getHotelbyId(int id) {
        return this.hotelRepository.getHotelbyId(id);
    }

    @Override
    public long countHotel() {
        return this.hotelRepository.countHotel();
    }

    @Override
    public long countDetail(int id) {
        return this.hotelRepository.countDetail(id);
    }
    
}
