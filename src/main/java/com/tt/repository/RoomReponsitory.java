/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository;

import com.tt.pojos.Room;

/**
 *
 * @author anhtu
 */
public interface RoomReponsitory {
    boolean deleteRoomById(int id);
    Room getRoomById(int id);
    boolean addRoom(Room room);
    boolean updateRoom(Room room);
}
