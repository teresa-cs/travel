/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.configs.handlers;

import com.tt.pojos.User;
import com.tt.service.UserService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

/**
 *
 * @author anhtu
 */
@Component
public class LoginSuccessHandler implements AuthenticationSuccessHandler{
    
    private UserService userDetailsService;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication a) throws IOException, ServletException {
        
        User u = this.userDetailsService.getUserbyName(a.getName());
        request.getSession().setAttribute("currentUser", u);
               
        response.sendRedirect("/travel");
    }
    
}
