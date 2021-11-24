/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.formatter;

import com.tt.pojos.Place;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;


/**
 *
 * @author anhtu
 */
public class PlaceFormatter implements Formatter<Place>{

    @Override
    public String print(Place obj, Locale locale) {
        return String.valueOf(obj.getId());
    }

    @Override
    public Place parse(String placeId, Locale locale) throws ParseException {
        Place p = new Place();
        p.setId(Integer.parseInt(placeId));
        
        return p;
    }
    
}
