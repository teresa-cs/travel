/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.validator;

import com.tt.pojos.Tour;
import java.util.Set;
import javax.validation.ConstraintViolation;
import org.hibernate.validator.internal.util.Contracts;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;


/**
 *
 * @author anhtu
 */
@Component
public class WebAppValidator implements Validator{
    
    @Autowired
    private javax.validation.Validator beanValidator; 
    private Set<Validator> SpringValidator;
    
    @Override
    public boolean supports(Class<?> clazz) {
        return Tour.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors err) {
        Set<ConstraintViolation<Object>> beans = this.beanValidator.validate(target);
        for (ConstraintViolation<Object> obj : beans)
            err.rejectValue(obj.getPropertyPath().toString(), 
                    obj.getMessageTemplate(), obj.getMessage());
        for(Validator v: this.SpringValidator)
            v.validate(target, err);
    }

    public void setSpringValidator(Set<Validator> SpringValidator) {
        this.SpringValidator = SpringValidator;
    }
    
    
}
