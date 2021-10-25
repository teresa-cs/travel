/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository.impl;

import com.tt.pojos.OrderTour;
import com.tt.repository.OrderTourRepository;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author anhtu
 */
@Repository
@Transactional
public class OrderTourRepositoryImpl implements OrderTourRepository{
    
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public OrderTour addOrderTour(OrderTour orderTour) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(orderTour);
            return orderTour;
        } catch (Exception ex) {
            System.err.println("=== ADD ORDERTOUR EER ===" + ex.getMessage());
            ex.printStackTrace();
        }
        return null;
    }
    
}
