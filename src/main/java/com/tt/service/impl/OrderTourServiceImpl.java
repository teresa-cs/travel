/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.service.impl;

import com.tt.pojos.Discount;
import com.tt.pojos.OrderTour;
import com.tt.pojos.Tour;
import com.tt.pojos.User;
import com.tt.repository.DiscountRepository;
import com.tt.repository.OrderTourRepository;
import com.tt.repository.TourRepository;
import com.tt.service.DiscountService;
import com.tt.service.OrderTourService;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author anhtu
 */
@Service
public class OrderTourServiceImpl implements OrderTourService {

    @Autowired
    private OrderTourRepository orderTourRepository;
    @Autowired
    private TourRepository tourRepository;
    @Autowired
    private DiscountRepository discountRepository;

    @Override
    public OrderTour addOrderTour(String fullname, String gmail, String phone,
            Integer adult, Integer children, Integer total, Integer iddiscount,Tour t) {
        Discount d = this.discountRepository.getDiscountById(iddiscount);
        OrderTour ot = new OrderTour();
        ot.setFullname(fullname);
        ot.setGmail(gmail);
        ot.setPhone(phone);
        ot.setAdult(adult);
        ot.setChildren(children);
        ot.setTotal(total);
        ot.setCreatedDate(new Date());
        ot.setIdtour(t);
        
        ot.setIddiscount(d);

//        ot.setIdtour(this.tourRepository.getTourbyId(3));
        return this.orderTourRepository.addOrderTour(ot);
    }

    @Override
    public OrderTour addOrderTour(String fullname, String gmail, String phone,
            Integer adult, Integer children, Integer total, Tour t) {

        OrderTour ot = new OrderTour();
        ot.setFullname(fullname);
        ot.setGmail(gmail);
        ot.setPhone(phone);
        ot.setAdult(adult);
        ot.setChildren(children);
        ot.setTotal(total);
        ot.setCreatedDate(new Date());
        ot.setIdtour(t);
//        ot.setIdtour(this.tourRepository.getTourbyId(3));
        return this.orderTourRepository.addOrderTour(ot);
    }

    @Override
    public List<OrderTour> getListOrderTour(String kw, int page) {
        return this.orderTourRepository.getListOrderTour(kw, page);
    }

    @Override
    public List<OrderTour> getListOrderTourByIdUser(User user) {
        return this.orderTourRepository.getListOrderTourByIdUser(user);
    }

}
