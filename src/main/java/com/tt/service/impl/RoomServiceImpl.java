/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.tt.pojos.Room;
import com.tt.repository.RoomReponsitory;
import com.tt.service.RoomService;
import java.io.IOException;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author anhtu
 */
@Service
public class RoomServiceImpl implements RoomService{
    
    @Autowired
    private RoomReponsitory roomReponsitory;
    
    @Autowired
    private Cloudinary cloudinary;

    @Override
    public boolean deleteRoomById(int id) {
        return this.roomReponsitory.deleteRoomById(id);
    }

    @Override
    public Room getRoomById(int id) {
        return this.roomReponsitory.getRoomById(id);
    }

    @Override
    public boolean addRoom(Room room) {
        try {
            Map r = this.cloudinary.uploader().upload(room.getFile().getBytes(),
                    ObjectUtils.asMap("resource_type", "auto"));
            room.setImage((String) r.get("secure_url"));
            return this.roomReponsitory.addRoom(room);
        } catch (IOException ex) {
            System.err.print("===ADD ROOM===" + ex.getMessage());
        }
        return false;
    }

    @Override
    public boolean updateRoom(Room newRoom, Room oldRoom) {
        
        oldRoom.setType(newRoom.getType());
        oldRoom.setDescription(newRoom.getDescription());
        oldRoom.setMaximum(newRoom.getMaximum());
        oldRoom.setPrice(newRoom.getPrice());
        
        return this.roomReponsitory.updateRoom(oldRoom);
    }
    
}
