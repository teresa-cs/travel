/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository;

import com.tt.pojos.Cmt;

/**
 *
 * @author anhtu
 */
public interface CommentRepository {
    Cmt addComment(Cmt c);
    boolean addOrUpdate(Cmt cmt);
}
