/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.validator;

import com.tt.pojos.Tour;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author anhtu
 */
@Component 
public class TourNameValidator implements Validator {

    @Override
    public boolean supports(Class<?> clazz) {
        return Tour.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors err) {
        Tour t = (Tour) target;
        if (t.getName().length() > 45)
            err.rejectValue("name", "tour.name.maxErr");
        if(t.getName().length() == 0)
            err.rejectValue("name", "tour.name.nullErr");
        if(t.getDestination().length() > 2000)
            err.reject("destination", "tour.destination.maxErr");
    }
    
}
