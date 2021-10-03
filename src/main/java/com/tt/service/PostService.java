/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.service;

import com.tt.pojos.Cmt;
import com.tt.pojos.Post;
import java.util.List;

/**
 *
 * @author anhtu
 */
public interface PostService {
    List<Post> getPost();
     Post getPostbyId(int id);
     List<Cmt> getComment(int id);
}
