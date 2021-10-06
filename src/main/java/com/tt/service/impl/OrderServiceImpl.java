/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.service.impl;

import com.tt.pojos.Hotel;
import com.tt.pojos.Orders;
import com.tt.pojos.Room;
import com.tt.pojos.User;
import com.tt.repository.HotelRepository;
import com.tt.repository.OrderReponsitory;
import com.tt.repository.UserRepository;
import com.tt.service.OrderService;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

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
    public boolean addOrUpdate(Orders order) {
        
        String name= SecurityContextHolder.getContext().getAuthentication().getName();
        User u= userRepository.getUserbyName(name);
        order.setIduser(u);
        return this.orderRepository.addOrUpdate(order);
    }

    @Override
    public List<Orders> getOrders() {
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
    
}
