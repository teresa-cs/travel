/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository.impl;

import com.tt.pojos.Place;
import com.tt.repository.PlaceReponsitory;
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
public class PlaceReponsitoryImpl implements PlaceReponsitory {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Place> getPlaces() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("From Place");
        return q.getResultList();
    }

    @Override
    public Place getPlaceById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Place.class, id);
    }

}
