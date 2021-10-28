/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository.impl;

import com.tt.pojos.OrderTour;
import com.tt.pojos.Place;
import com.tt.pojos.Tour;
import com.tt.repository.StatsRepository;
import java.util.ArrayList;
import java.util.Date;
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
 * @author trang
 */
@Repository
@Transactional
public class StatsRepositoryImpl implements StatsRepository{
    
    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Object[]> placeStats() {
         Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
        
        Root rootT = query.from(Tour.class);
        Root rootP = query.from(Place.class);
        query.where(builder.equal(rootT.get("idPlace"), rootP.get("id")));
        query.multiselect( rootP.get("id"),rootP.get("name"), builder.count(rootT.get("id")));
        
        query.groupBy(rootP.get("id"));
        
        Query q= session.createQuery(query);
        
        return q.getResultList();

    }

    @Override
    public List<Object[]> totalRevenue(String kw, Date fromDate, Date toDate) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
         Root rootT = query.from(Tour.class);
         Root rootO= query.from(OrderTour.class);
        Root rootP = query.from(Place.class);
        
        List<Predicate> pre= new ArrayList<>();
        pre.add(builder.equal(rootT.get("idPlace"), rootP.get("id")));
        pre.add(builder.equal(rootT.get("id"), rootO.get("idtour")));
        
        query.multiselect( rootP.get("id"),rootP.get("name"), builder.sum(rootO.get("total")));
        
        if(kw!= null && !kw.isEmpty()){
            pre.add(builder.like(rootP.get("name").as(String.class), String.format("%%%s%%", kw)));
        }
        if(fromDate!= null){
            pre.add(builder.greaterThanOrEqualTo(rootO.get("createdDate"), fromDate));
        }
        if(toDate!= null){
            pre.add(builder.lessThanOrEqualTo(rootO.get("createdDate"), toDate));
        }
        query.where(pre.toArray(new Predicate[]{}));
        query.groupBy(rootP.get("id"));
        query = query.orderBy(builder.asc(rootP.get("id")));

        Query q= session.createQuery(query);
        
        return q.getResultList();


    }

    @Override
    public List<Object[]> totalbyMonth(String kw, Date fromDate, Date toDate) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
         Root rootT = query.from(Tour.class);
         Root rootO= query.from(OrderTour.class);
        Root rootP = query.from(Place.class);
        
        List<Predicate> pre= new ArrayList<>();
        pre.add(builder.equal(rootT.get("idPlace"), rootP.get("id")));
        pre.add(builder.equal(rootT.get("id"), rootO.get("idtour")));
        
        query.multiselect( builder.function("MONTH", Integer.class, rootO.get("createdDate")),
                builder.function("YEAR", Integer.class, rootO.get("createdDate")),builder.sum(rootO.get("total")));
        
        if(kw!= null && !kw.isEmpty()){
            pre.add(builder.like(rootP.get("name").as(String.class), String.format("%%%s%%", kw)));
        }
        if(fromDate!= null){
            pre.add(builder.greaterThanOrEqualTo(rootO.get("createdDate"), fromDate));
        }
        if(toDate!= null){
            pre.add(builder.lessThanOrEqualTo(rootO.get("createdDate"), toDate));
        }
        query.where(pre.toArray(new Predicate[]{}));
        query.groupBy(builder.function("MONTH", Integer.class, rootO.get("createdDate")),
                builder.function("YEAR", Integer.class, rootO.get("createdDate")));
        query = query.orderBy(builder.asc(rootO.get("createdDate")));

        Query q= session.createQuery(query);
        
        return q.getResultList();

    }
    
}
