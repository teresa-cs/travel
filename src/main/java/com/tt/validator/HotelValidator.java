/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.validator;

import com.tt.pojos.Hotel;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author anhtu
 */
@Component
public class HotelValidator implements Validator{
      @Override
    public boolean supports(Class<?> clazz) {
        return Hotel.class.isAssignableFrom(clazz);
    }


    @Override
    public void validate(Object target, Errors arg1) {
        Hotel t = (Hotel) target;
    }
    
}
