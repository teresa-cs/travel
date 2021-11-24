/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository.impl;

import com.tt.pojos.Hotel;
import com.tt.pojos.OrderTour;
import com.tt.repository.OrderTourRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
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

    @Override
    public List<OrderTour> getListOrderTour(String kw, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<OrderTour> query = builder.createQuery(OrderTour.class);
        Root root = query.from(OrderTour.class);
        query = query.select(root);

        if (kw != null) {
            Predicate p = builder.like(root.get("fullname").as(String.class), String.format("%%%s%%", kw));
            query = query.where(p);
        }
        int max = 10;
        Query q = session.createQuery(query);
        q.setMaxResults(max);
        q.setFirstResult((page - 1) * max);
        return q.getResultList();
    }

    @Override
    public List<OrderTour> getListOrderTourByIdUser(int iduser) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("SELECT o FROM OrderTour o WHERE o.id = :id");
//        q.setParameter("id", getHotelbyId(id));
        return q.getResultList();
    }
    
}
