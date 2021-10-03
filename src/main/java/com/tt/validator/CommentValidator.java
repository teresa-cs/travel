/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.validator;

import com.tt.pojos.Cmt;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author anhtu
 */
@Component
public class CommentValidator implements Validator{
     @Override
    public boolean supports(Class<?> clazz) {
        return Cmt.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors err) {
        Cmt c = (Cmt) target;
    }
}
