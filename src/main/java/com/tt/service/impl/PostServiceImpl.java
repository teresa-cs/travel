/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.tt.pojos.Cmt;
import com.tt.pojos.Post;
import com.tt.repository.PostRepository;
import com.tt.service.PostService;
import java.io.IOException;
import java.util.List;
import java.util.Map;
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
    @Autowired
    private Cloudinary cloudinary;
    
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

    @Override
    public List<Post> getListPost(String kw, int page) {
    
        return this.postRepository.getListPost(kw, page);
    }

    @Override
    public long countPost() {
        return this.postRepository.countPost();
    }

    @Override
    public boolean deletePost(int id) {
        return this.postRepository.deletePost(id);
    }

    @Override
    public boolean updatePost(Post newPost, Post oldPost) {
        
        oldPost.setTitle(newPost.getTitle());
        oldPost.setIntro(newPost.getIntro());
        oldPost.setContent(newPost.getContent());
        
        return this.postRepository.updatePost(oldPost);
    }

    @Override
    public boolean addPost(Post post) {
        try {
            Map r = this.cloudinary.uploader().upload(post.getFile().getBytes(),
                    ObjectUtils.asMap("resource_type", "auto"));
            post.setImage((String) r.get("secure_url"));
            return this.postRepository.addPost(post);
        } catch (IOException ex) {
            System.err.print("===ADD POST===" + ex.getMessage());
        }
        return false;
    }
    
}
