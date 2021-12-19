/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.service;

import com.tt.pojos.OrderTour;
import com.tt.pojos.Tour;
import com.tt.pojos.User;
import java.util.List;

/**
 *
 * @author anhtu
 */
public interface OrderTourService {

    OrderTour addOrderTour(String fullname, String gmail, String phone,
            Integer adult, Integer children, Integer total, Integer iddsicount, Tour t);

    OrderTour addOrderTour(String fullname, String gmail, String phone,
            Integer adult, Integer children, Integer total, Tour t);
    
    List<OrderTour> getListOrderTour(String kw, int page) ;
    List<OrderTour> getListOrderTourByIdUser(User user);
}
