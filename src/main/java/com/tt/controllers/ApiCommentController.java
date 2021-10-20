/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import com.tt.pojos.Cmt;
import com.tt.pojos.User;
import com.tt.service.CommentService;
import com.tt.validator.CommentValidator;
import com.tt.validator.WebAppValidator;
import java.util.Map;
import javax.servlet.http.HttpSession;
import javax.validation.*;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author anhtu
 */
@RestController
//@ControllerAdvice
public class ApiCommentController {

    @Autowired
    private CommentService commentService;
    
//    @Autowired
//    private WebAppValidator commentValidator;
//    
//    @InitBinder
//    public void initBinder(WebDataBinder binder) {
//        binder.setValidator(commentValidator);
//    }


    @PostMapping(path = "/api/add-comment", produces = {
        MediaType.APPLICATION_JSON_VALUE })
    public ResponseEntity<Cmt> addComment( @RequestBody Map<String, String> params,HttpSession session) {
        User u= (User) session.getAttribute("currentUser");
        if(u != null)
            try {
                String comment = params.get("comment" );
                int idpost = Integer.parseInt(params.get("postId"));

                Cmt c = this.commentService.addComment(comment, idpost ,u);

                return new ResponseEntity<>(c, HttpStatus.CREATED);
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        
        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
  
        
    }
}
