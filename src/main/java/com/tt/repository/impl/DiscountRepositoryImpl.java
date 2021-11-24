/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository.impl;

import com.tt.pojos.Discount;
import com.tt.repository.DiscountRepository;
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
public class DiscountRepositoryImpl implements DiscountRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public boolean addDiscount(Discount discount) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(discount);
            return true;
        } catch (Exception ex) {
            System.err.println("=== ADD DISCOUNT EER ===" + ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Discount> getDiscounts(String kw, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Discount> query = builder.createQuery(Discount.class);
        Root root = query.from(Discount.class);
        query = query.select(root);

        if (kw != null) {
            Predicate p = builder.like(root.get("code").as(String.class), String.format("%%%s%%", kw));
            query = query.where(p);
        }
        int max = 10;
        Query q = session.createQuery(query);
        q.setMaxResults(max);
        q.setFirstResult((page - 1) * max);
        return q.getResultList();
    }

    @Override
    public long countDiscount() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("Select Count(*) From Discount");
        return Long.parseLong(q.getSingleResult().toString());
    }

    @Override
    public Discount getDiscountById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Discount.class, id);
    }

    @Override
    public boolean deleteDiscount(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            Discount discount = getDiscountById(id);
            session.remove(discount);
            return true;
        } catch (Exception e) {
            e.getMessage();
        }
        return false;
    }

    @Override
    public Discount getDiscountByCode(String code) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("SELECT d FROM Discount d WHERE d.code = :code");
        q.setParameter("code", code);
        return (Discount) q.getResultList().get(0);
    }

}
