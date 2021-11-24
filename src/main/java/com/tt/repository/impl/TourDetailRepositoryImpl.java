/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository.impl;

import com.tt.pojos.TourDetail;
import com.tt.repository.TourDetailResponsitory;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.query.Query;
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
public class TourDetailRepositoryImpl implements TourDetailResponsitory{
    
    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public boolean addTourDetail(TourDetail tourDetail) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(tourDetail);
            return true;
        } catch (Exception ex) {
            System.err.println("=== ADD TOURDETAIL EER ===" + ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public TourDetail getTourDetailById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(TourDetail.class, id);
    }

    @Override
    public boolean deleteTourDetail(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            TourDetail tourDetail = getTourDetailById(id);
            session.delete(tourDetail);
            return true;
        } catch (Exception e) {
            e.getMessage();
        }
        return false;
    }

    @Override
    public boolean updateTourDetail(TourDetail tourDetail) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.update(tourDetail);
            return true;
        } catch (Exception ex) {
            System.err.println("=== UPDATE TURDETAIL EER ===" + ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }

    
    
}
