/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository.impl;

import com.tt.pojos.Cmt;
import com.tt.pojos.Post;
import com.tt.repository.PostRepository;
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
public class PostRepositoryImpl implements PostRepository{
    
     @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public List<Post> getPost() {
         Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Post> query = builder.createQuery(Post.class);
        Root root = query.from(Post.class);
        query = query.select(root);
        Query q = session.createQuery(query);
        return q.getResultList();

    }

    @Override
    public Post getPostbyId(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Post p = session.get(Post.class, id);
        return p;
    }

    @Override
    public List<Cmt> getComment(int id, int page) {      
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Cmt> query = builder.createQuery(Cmt.class);
        Root root = query.from(Cmt.class);
        
        query = query.where(builder.equal(root.get("idpost"), id));
        query= query.orderBy(builder.desc(root.get("id")));
        
        Query q = session.createQuery(query);
        int max= 4;
        q.setMaxResults(max);
        q.setFirstResult((page - 1) * max);
        return q.getResultList();
       
    }
    
}
