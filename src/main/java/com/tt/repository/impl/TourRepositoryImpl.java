/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository.impl;

import com.tt.pojos.Place;
import com.tt.pojos.Tour;
import com.tt.pojos.TourDetail;
import com.tt.repository.TourRepository;
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
public class TourRepositoryImpl implements TourRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Tour> getTours(String kw, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Tour> query = builder.createQuery(Tour.class);
        Root root = query.from(Tour.class);
        query = query.select(root);

        if (kw != null) {
            Predicate p = builder.like(root.get("name").as(String.class), String.format("%%%s%%", kw));
            query = query.where(p);
        }
        int max = 10;
        Query q = session.createQuery(query);
        q.setMaxResults(max);
        q.setFirstResult((page - 1) * max);
        return q.getResultList();
    }

    @Override
    public Tour getTourbyId(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Tour.class, id);
    }

    @Override
    public Place getPlacebyId(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Place.class, id);
    }

    @Override
    public long countTour() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("Select Count(*) From Tour");
        return Long.parseLong(q.getSingleResult().toString());
    }

    @Override
    public List<TourDetail> getTourDetail(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
//        CriteriaBuilder builder = session.getCriteriaBuilder();
//        CriteriaQuery query = builder.createQuery(Object[].class);
//        Root rootT = query.from(Tour.class);
//        Root rootTD = query.from(TourDetail.class);
//        query = query.multiselect(rootTD.get("id"), rootT.get("id"), rootTD.get("image"));
//
//        Predicate p = builder.equal(rootT.get("id"), rootTD.get("idtour"));
//
//        Predicate p1 = builder.equal(rootT.get("id"), id);
//        query = query.where(builder.and(p, p1));

        Query q = session.createQuery("SELECT t FROM TourDetail t WHERE t.idtour = :id");
        q.setParameter("id", getTourbyId(id));
        return q.getResultList();
    }

    @Override
    public boolean addOrUpdate(Tour tour) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(tour);
            return true;
        } catch (Exception ex) {
            System.err.println("=== ADD TOUR EER ===" + ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public long countDetail(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("Select Count(*) FROM TourDetail t WHERE t.idtour = :id");
        q.setParameter("id", getTourbyId(id));
        return Long.parseLong(q.getSingleResult().toString());
    }

    @Override
    public boolean deleteTour(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            Tour tour = getTourbyId(id);
            session.delete(tour);
            return true;
        } catch (Exception e) {
            e.getMessage();
        }
        return false;

    }
}
