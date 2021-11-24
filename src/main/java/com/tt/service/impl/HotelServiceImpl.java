/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.tt.pojos.Hotel;
import com.tt.pojos.Room;
import com.tt.pojos.User;
import com.tt.repository.HotelRepository;
import com.tt.repository.TourRepository;
import com.tt.repository.UserRepository;
import com.tt.service.HotelService;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import javax.persistence.criteria.Order;
import javax.ws.rs.core.SecurityContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

/**
 *
 * @author trang
 */
@Service
public class HotelServiceImpl implements HotelService {

    @Autowired
    private HotelRepository hotelRepository;

    @Autowired
    private UserRepository userRepository;
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
    public List<Room> getRooms(int id) {

        return this.hotelRepository.getRooms(id);
    }

    @Override
    public Room getRoombyId(int i) {
        return this.hotelRepository.getRoombyId(i);
    }

    @Override
    public boolean addOrUpdate(Hotel hotel) {
        try {
            Map r = this.cloudinary.uploader().upload(hotel.getFile().getBytes(),
                    ObjectUtils.asMap("resource_type", "auto"));
            hotel.setAvt((String) r.get("secure_url"));
            return this.hotelRepository.addOrUpdate(hotel);
        } catch (IOException ex) {
            System.err.print("===ADD Hotel===" + ex.getMessage());
        }
        return false;
    }

    @Override
    public List<Hotel> searchRate(int rate) {
        return this.hotelRepository.searchRate(rate);
    }

    @Override
    public boolean deleteHotelById(int id) {
        return this.hotelRepository.deleteHotelById(id);
    }

    @Override
    public boolean updateHotel(Hotel newHotel, Hotel oldHotel) {

        oldHotel.setName(newHotel.getName());
        oldHotel.setAddress(newHotel.getAddress());
        oldHotel.setRate(newHotel.getRate());
        oldHotel.setDescription(newHotel.getDescription());

        return this.hotelRepository.updateHotel(oldHotel);
    }

}
