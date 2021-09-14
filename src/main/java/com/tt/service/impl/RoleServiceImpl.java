/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.service.impl;

import com.tt.pojos.Role;
import com.tt.repository.RoleRepository;
import com.tt.service.RoleService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author anhtu
 */
@Service
public class RoleServiceImpl implements RoleService{
    
    @Autowired
    private RoleRepository roleRepository;

    @Override
    public List<Role> getRoles() {
        return this.roleRepository.getRoles();
    }
    
}
