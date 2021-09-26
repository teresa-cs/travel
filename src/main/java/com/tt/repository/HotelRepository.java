/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository;

import com.tt.pojos.Hotel;
import java.util.List;

/**
 *
 * @author trang
 */
public interface HotelRepository {
    List<Hotel> getHotels(String kw, int page);

    Hotel getHotelbyId(int id);

    long countHotel();
    
    long countDetail(int id);
    
}
