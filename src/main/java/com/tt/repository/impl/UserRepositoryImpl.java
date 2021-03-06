/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository.impl;

import com.tt.pojos.Role;
import com.tt.pojos.Tour;
import com.tt.pojos.User;
import com.tt.repository.UserRepository;
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
public class UserRepositoryImpl implements UserRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public boolean addUser(User user) {
        Session session= this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(user);
            return true;
        } catch (Exception e) {
            System.err.print(e.getMessage());
        }
        return false;
    }

    @Override
    public List<User> getUsers(String username) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<User> query = builder.createQuery(User.class);
        Root root = query.from(User.class);
        query = query.select(root);

        if (!username.isEmpty()) {
            Predicate p = builder.equal(root.get("username").as(String.class), username.trim());
            query = query.where(p);
        }
        Query q = session.createQuery(query);
        return q.getResultList();

    }

    @Override
    public User getUserById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        return session.get(User.class, id);
    }
    
     @Override
    public User getUserbyName(String name) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("SELECT u FROM User u WHERE u.username = :username");
        q.setParameter("username", name);
        return (User) q.getSingleResult();
    }

    @Override
    public List<User> getUserOfManage(String kw, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<User> query = builder.createQuery(User.class);
        Root root = query.from(User.class);
        
        query = query.select(root);

        if (kw != null) {
            Predicate p = builder.like(root.get("username").as(String.class), String.format("%%%s%%", kw));
           Predicate p1 = builder.equal(root.get("roleId"), getRolebyId(6));
            query = query.where(builder.and(p1, p));
        }
        else
        {
        Predicate p1 = builder.equal(root.get("roleId"), getRolebyId(6));
            query = query.where(p1);
        }
        
        int max = 10;
        Query q = session.createQuery(query);
        q.setMaxResults(max);
        q.setFirstResult((page - 1) * max);
        return q.getResultList();
    }

    @Override
    public Role getRolebyId(int id) {
         Session session = this.sessionFactory.getObject().getCurrentSession();
        
        return session.get(Role.class, id);
    }

    
}
