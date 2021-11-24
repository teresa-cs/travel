/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository.impl;

import com.tt.pojos.Room;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.tt.repository.RoomReponsitory;

/**
 *
 * @author anhtu
 */
@Repository
@Transactional
public class RoomRepositoryImpl implements RoomReponsitory{
    
    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public Room getRoomById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Room.class, id);
    }
    
    @Override
    public boolean deleteRoomById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            Room room = getRoomById(id);
            session.delete(room);
            return true;
        } catch (Exception e) {
            e.getMessage();
        }
        return false;
    }

    @Override
    public boolean addRoom(Room room) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(room);
            return true;
        } catch (Exception ex) {
            System.err.println("=== ADD ROOM EER ===" + ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateRoom(Room room) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.update(room);
            return true;
        } catch (Exception ex) {
            System.err.println("=== UPDATE ROOM EER ===" + ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }
    
}
