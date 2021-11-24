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

    @Override
    public List<Post> getListPost(String kw, int page) {
         Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Post> query = builder.createQuery(Post.class);
        Root root = query.from(Post.class);
        query = query.select(root);

        if (kw != null) {
            Predicate p = builder.like(root.get("title").as(String.class), String.format("%%%s%%", kw));
            query = query.where(p);
        }
        int max = 4;
        Query q = session.createQuery(query);
        q.setMaxResults(max);
        q.setFirstResult((page - 1) * max);
        return q.getResultList();
    }

    @Override
    public long countPost() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("Select Count(*) From Post");
        return Long.parseLong(q.getSingleResult().toString());
    }

    @Override
    public boolean deletePost(int id) {
       Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            Post post = getPostbyId(id);
            session.delete(post);
            return true;
        } catch (Exception e) {
            e.getMessage();
        }
        return false;
    }

    @Override
    public boolean updatePost(Post post) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.update(post);
            return true;
        } catch (Exception ex) {
            System.err.println("=== UPDATE POST EER ===" + ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean addPost(Post post) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(post);
            return true;
        } catch (Exception ex) {
            System.err.println("=== ADD Hotel EER ===" + ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }
    
}
