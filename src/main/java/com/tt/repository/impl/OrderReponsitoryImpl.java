/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository.impl;

import com.tt.pojos.Hotel;
import com.tt.pojos.Orders;
import com.tt.pojos.Room;
import com.tt.repository.OrderReponsitory;
import java.util.Date;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
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
public class OrderReponsitoryImpl implements OrderReponsitory{
    
    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public boolean addOrUpdate(Orders order) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(order);
            return true;
        } catch (Exception ex) {
            System.err.println("=== ADD Order EER ===" + ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }
    

    @Override
    public List<Orders> getOrders() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Orders> query = builder.createQuery(Orders.class);
        Root root = query.from(Orders.class);
        query = query.select(root);
        Query q = session.createQuery(query);       
        return q.getResultList();
    }

    @Override
    public boolean checkDate(Room r, Date checkin, Date checkout) {
        boolean kqua;
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("SELECT b FROM Orders b WHERE b.idroom = :id AND"
                + " b.checkin > :checkout OR b.checkout < :checkin ");
        q.setParameter("id",r);
        q.setParameter("checkin",checkin);
        q.setParameter("checkout",checkout);
        List<Orders> listOrders = q.getResultList();
        
        if(listOrders.size()==this.orderByRoom(r))
        {
             kqua=true;
        }
        else
        {
             kqua=false;
        }        
         return kqua;   
    }

    @Override
    public long orderByRoom(Room r) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("Select Count(*) FROM Orders t WHERE t.idroom = :id");
        q.setParameter("id", r);
        return Long.parseLong(q.getSingleResult().toString());
    }
    
}
