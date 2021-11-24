/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository;

import com.tt.pojos.OrderHotel;
import com.tt.pojos.Room;
import java.util.Date;
import java.util.List;

/**
 *
 * @author anhtu
 */
public interface OrderReponsitory {

    boolean addOrUpdate(OrderHotel order);

    List<OrderHotel> getOrders();

    boolean checkDate(Room r, Date checkin, Date checkout);

    long orderByRoom(Room r);
    
    List<OrderHotel> getOrderHotelByPage(String kw, int page);
}
