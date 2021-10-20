/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import com.tt.pojos.Cmt;
import com.tt.pojos.Post;
import com.tt.service.CommentService;
import com.tt.service.PostService;
import com.tt.service.UserService;
import com.tt.validator.PostValidator;
import com.tt.validator.WebAppValidator;
import java.util.Map;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author anhtu
 */
@Controller
//@ControllerAdvice
public class PostController {
    
    @Autowired
    private PostService postService;
    @Autowired
    private CommentService commentService;
    @Autowired
    private UserService userService;
    
//    @Autowired
//    private WebAppValidator postValidator;
//    
//    @InitBinder
//    public void initBinder(WebDataBinder binder) {
//        binder.setValidator(postValidator);
//    }
    
    @RequestMapping("/post")
    public String post(Model model) {
        model.addAttribute("post", this.postService.getPost());
        return "post";
    }
    
    @GetMapping("post/post-{postId}")
    public String postDetail(Model model, @PathVariable(value = "postId") int id,
            @RequestParam(required = false) Map<String, String> params  ) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        Post p = this.postService.getPostbyId(id);
        model.addAttribute("p", p);
        model.addAttribute("post", this.postService.getComment(id,page));
        model.addAttribute("countCmt", this.commentService.countCmt(id));
        
//

        return "post-detail";
    }

}
