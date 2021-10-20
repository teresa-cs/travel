/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.service;

import com.tt.pojos.Cmt;
import com.tt.pojos.User;

/**
 *
 * @author anhtu
 */
public interface CommentService {
    Cmt addComment(String content, int postId, User user);
    long countCmt(int postId);
}
