/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import com.tt.pojos.Cmt;
import com.tt.service.CommentService;
import com.tt.validator.CommentValidator;
import com.tt.validator.WebAppValidator;
import java.util.Map;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author anhtu
 */
@RestController
public class ApiCommentController {

    @Autowired
    private CommentService commentService;


    @PostMapping(path = "/api/add-comment", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<Cmt> addCmt(@Valid @RequestBody Map<String, String> params) {
        try {
            String comment = params.get("comment" );
            int idpost = Integer.parseInt(params.get("idpost"));
            
            Cmt c = this.commentService.addComment(comment, idpost);
            
            return new ResponseEntity<>(c, HttpStatus.CREATED);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
  
        
    }
}
