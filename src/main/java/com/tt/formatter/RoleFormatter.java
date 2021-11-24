/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.formatter;

import com.tt.pojos.Role;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author anhtu
 */
public class RoleFormatter implements Formatter<Role>{

    @Override
    public String print(Role obj, Locale locale) {
        return String.valueOf(obj.getId());
    }

    @Override
    public Role parse(String roleId, Locale locale) throws ParseException {
        Role r = new Role();
        r.setId(Integer.parseInt(roleId));
        return r;
    }
    
}
