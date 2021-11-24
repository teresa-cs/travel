/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import com.tt.pojos.Hotel;
import com.tt.pojos.Post;
import com.tt.pojos.Room;
import com.tt.service.PostService;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author anhtu
 */
@RestController
public class ApiPostController {

    @Autowired
    private PostService postService;

    //List post
    @GetMapping("/api/listpost/{page}")
    public ResponseEntity<List<Post>> listPost(@PathVariable(value = "page") Integer page) {
        List<Post> posts = this.postService.getListPost("", page);

        return new ResponseEntity<>(posts, HttpStatus.OK);
    }

    //Delete Post
    @DeleteMapping(path = "/api/posts/{idPost}", produces = {
        MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<Post> deletePostById(@PathVariable(value = "idPost") int idPost) {
        if (this.postService.deletePost(idPost) == true) {
            return new ResponseEntity<>(HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
    
     //GetPost
    @GetMapping(path = "/api/posts/{idPost}", produces = {
        MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<Post> getPostById(@PathVariable(value = "idPost") int idPost) {
        try {
            Post post = this.postService.getPostbyId(idPost);
            return new ResponseEntity<>(post, HttpStatus.OK);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
         return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
    
    //Update Room
    @PutMapping(path = "/api/posts/{idPost}", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<Post> updatePostById(@PathVariable("idPost") Integer idPost,
            @Valid @RequestBody Post post) {
        if (this.postService.updatePost(post,
                this.postService.getPostbyId(idPost)) == true) {
            return new ResponseEntity<>(HttpStatus.OK);
        }

        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }
    
}
