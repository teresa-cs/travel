/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository;

import com.tt.pojos.Role;
import com.tt.pojos.User;
import java.util.List;

/**
 *
 * @author trang
 */
public interface UserRepository {

    boolean addUser(User user);

    List<User> getUsers(String username);

    User getUserById(int userId);
    
    Role getRolebyId(int id);

    User getUserbyName(String name);
    
    List<User> getUserOfManage(String kw, int page);
}
