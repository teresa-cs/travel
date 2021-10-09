/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.service.impl;

import com.tt.pojos.Cmt;
import com.tt.pojos.Post;
import com.tt.pojos.User;
import com.tt.repository.CommentRepository;
import com.tt.repository.PostRepository;
import com.tt.repository.UserRepository;
import com.tt.service.CommentService;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author anhtu
 */
@Service
public class CommentServiceImpl implements CommentService{
    
    @Autowired
    private PostRepository postRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private CommentRepository commentRepository;

    @Override
    public Cmt addComment(String content, int postId) {
        Post p = this.postRepository.getPostbyId(postId);
        User u = this.userRepository.getUserById(4);
        
        Cmt c = new Cmt(); 
        c.setComment(content);
        c.setIdpost(p);
        c.setIduser(u);
        c.setCreatedDate(new Date());
        return this.commentRepository.addComment(c);
    }

    @Override
    public boolean addOrUpdate(Cmt cmt) {
        User u = this.userRepository.getUserById(1);
        Post p = this.postRepository.getPostbyId(4);
        cmt.setIdpost(p);
        cmt.setIduser(u);
        return this.commentRepository.addOrUpdate(cmt);
    }
    
}
