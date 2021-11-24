/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository.impl;


import com.tt.pojos.OrderHotel;
import com.tt.pojos.Room;
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
import com.tt.repository.OrderReponsitory;
import javax.persistence.criteria.Predicate;

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
    public boolean addOrUpdate(OrderHotel order) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(order);
            return true;
        } catch (Exception ex) {
            System.err.println("=== ADD ORDERHOTEL EER ===" + ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }
    

    @Override
    public List<OrderHotel> getOrders() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<OrderHotel> query = builder.createQuery(OrderHotel.class);
        Root root = query.from(OrderHotel.class);
        query = query.select(root);
        Query q = session.createQuery(query);       
        return q.getResultList();
    }

    @Override
    public boolean checkDate(Room r, Date checkin, Date checkout) {
        boolean kqua;
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("SELECT b FROM OrderHotel b WHERE b.idroom = :id AND"
                + " b.checkin > :checkout OR b.checkout < :checkin ");
        q.setParameter("id",r);
        q.setParameter("checkin",checkin);
        q.setParameter("checkout",checkout);
        List<OrderHotel> listOrders = q.getResultList();
        
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
        Query q = session.createQuery("Select Count(*) FROM OrderHotel t WHERE t.idroom = :id");
        q.setParameter("id", r);
        return Long.parseLong(q.getSingleResult().toString());
    }

    @Override
    public List<OrderHotel> getOrderHotelByPage(String kw, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<OrderHotel> query = builder.createQuery(OrderHotel.class);
        Root root = query.from(OrderHotel.class);
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
    
}
