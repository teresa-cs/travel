/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository;

import com.tt.pojos.Hotel;
import com.tt.pojos.Room;
import com.tt.pojos.Tour;
import java.util.List;

/**
 *
 * @author trang
 */
public interface HotelRepository {
    List<Hotel> getHotels(String kw, int page);

    Hotel getHotelbyId(int id);

    long countHotel();
    
    List<Room> getRooms(int id);
    
    Room getRoombyId(int id);
    
    boolean addOrUpdate(Hotel hotel);
    
    List<Hotel> searchRate(int rate);
    
    boolean deleteHotelById(int id);
    
    boolean updateHotel(Hotel hotel);
}
