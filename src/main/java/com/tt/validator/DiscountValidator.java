/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.validator;

import com.tt.pojos.Discount;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author anhtu
 */
@Component
public class DiscountValidator implements Validator{

    @Override
    public boolean supports(Class<?> clazz) {
        return Discount.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object obj, Errors err) {
        Discount d = (Discount) obj;
        if(d.getPercentPromotion() > 100 || d.getPercentPromotion() < 0){
            err.rejectValue("percentPromotion", "discount.err.size");
        }
    }
    
    
}
