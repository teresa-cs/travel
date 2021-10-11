/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.service;

import com.tt.pojos.Orders;
import com.tt.pojos.Room;
import java.util.Date;
import java.util.List;

/**
 *
 * @author anhtu
 */
public interface OrderService {
    boolean addOrUpdate(Orders order);
    List<Orders> getOrders();
    boolean checkDate(Room r, Date checkin, Date checkout);
    long orderByRoom(Room r);

}
