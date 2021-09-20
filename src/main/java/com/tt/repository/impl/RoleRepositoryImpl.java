/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository.impl;

import com.tt.pojos.Role;
import com.tt.repository.RoleRepository;
import java.util.List;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author anhtu
 */

@Repository
public class RoleRepositoryImpl implements RoleRepository{
    
    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    @Transactional   
    public List<Role> getRoles() {
        Session session = sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery < Role > cq = cb.createQuery(Role.class);
        Root < Role > root = cq.from(Role.class);
        cq.select(root);
        Query query = session.createQuery(cq);
        return query.getResultList();

    }

    @Override
    public void deleteRole(int id) {
        Session session = sessionFactory.getObject().getCurrentSession();
        Role role = session.byId(Role.class).load(id);
        session.delete(role);
    }

    @Override
    public Role getRoleId(int id) {
        Session session = sessionFactory.getObject().getCurrentSession();
        Role role = session.get(Role.class, id);
        return role;
    }

    @Override
    public void saveRole(Role role) {
        Session session = sessionFactory.getObject().getCurrentSession();
        session.saveOrUpdate(role);
    }
    
}
