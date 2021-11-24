/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.service.impl;

import com.tt.pojos.Hotel;
import com.tt.pojos.OrderHotel;
import com.tt.pojos.Room;
import com.tt.pojos.User;
import com.tt.repository.HotelRepository;
import com.tt.repository.UserRepository;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import com.tt.service.OrderService;
import com.tt.repository.OrderReponsitory;

/**
 *
 * @author anhtu
 */
@Service
public class OrderServiceImpl implements OrderService{
    
    @Autowired
    private OrderReponsitory orderRepository;
    
    @Autowired
    private HotelRepository hotelRepository;
    
    @Autowired
    private UserRepository userRepository;
    
    @Override
    public boolean addOrUpdate(OrderHotel order) {
        
        String name= SecurityContextHolder.getContext().getAuthentication().getName();
        User u= userRepository.getUserbyName(name);
        order.setIduser(u);
        return this.orderRepository.addOrUpdate(order);
    }

    @Override
    public List<OrderHotel> getOrders() {
        return this.orderRepository.getOrders();
    }

    @Override
    public boolean checkDate(Room r, Date checkin, Date checkout) {
        
        return this.orderRepository.checkDate(r, checkin, checkout);
    }

    @Override
    public long orderByRoom(Room room) {
        return this.orderRepository.orderByRoom(room);
    }

    @Override
    public List<OrderHotel> getOrderHotelByPage(String kw, int page) {
        return this.orderRepository.getOrderHotelByPage(kw, page);
    }
    
}
