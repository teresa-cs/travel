/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.service.impl;

import com.tt.pojos.Cmt;
import com.tt.pojos.Post;
import com.tt.repository.PostRepository;
import com.tt.service.PostService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author anhtu
 */
@Service
public class PostServiceImpl implements PostService{
    
    @Autowired
    private PostRepository postRepository;
    
    @Override
    public List<Post> getPost() {
        return this.postRepository.getPost();
    }

    @Override
    public Post getPostbyId(int id) {
        return this.postRepository.getPostbyId(id);
    }

    @Override
    public List<Cmt> getComment(int id,int page) {
        return this.postRepository.getComment(id, page);
    }
    
}
