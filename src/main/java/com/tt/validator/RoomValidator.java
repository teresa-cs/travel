/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.validator;

import com.tt.pojos.Room;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author anhtu
 */
public class RoomValidator implements Validator{
      @Override
    public boolean supports(Class<?> clazz) {
        return Room.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors err) {
        Room t = (Room) target;
        
    }
    
}
