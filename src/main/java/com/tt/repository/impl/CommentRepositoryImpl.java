/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository.impl;

import com.tt.pojos.Cmt;
import com.tt.repository.CommentRepository;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
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
public class CommentRepositoryImpl implements CommentRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public Cmt addComment(Cmt c) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(c);
            return c;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean addOrUpdate(Cmt cmt) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(cmt);
            return true;
        } catch (Exception ex) {
            System.err.println("=== ADD TOUR EER ===" + ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }

}
