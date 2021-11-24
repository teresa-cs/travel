/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository;

import com.tt.pojos.Cmt;
import com.tt.pojos.Post;
import java.util.List;

/**
 *
 * @author anhtu
 */
public interface PostRepository {

    List<Post> getPost();

    Post getPostbyId(int id);

    List<Cmt> getComment(int id, int page);

    List<Post> getListPost(String kw, int page);
    
    long countPost();
    
    boolean deletePost(int id);
    
    boolean updatePost(Post post);
    
    boolean addPost(Post post);
}
