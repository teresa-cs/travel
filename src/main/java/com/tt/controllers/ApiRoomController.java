/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import com.tt.pojos.Room;
import com.tt.service.RoomService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author anhtu
 */
@RestController
public class ApiRoomController {
    
    @Autowired
    private RoomService roomService;
    
    //GetRoom
    @GetMapping(path = "/api/rooms/{idRoom}", produces = {
        MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<Room> getRoomById(@PathVariable(value = "idRoom") int idRoom) {
        try {
            Room room = this.roomService.getRoomById(idRoom);
            return new ResponseEntity<>(room, HttpStatus.OK);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
         return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
    
    
    //Delete Room
    @DeleteMapping(path = "/api/rooms/{idRoom}", produces = {
        MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<Room> deleteRoomById(@PathVariable(value = "idRoom") int idRoom) {
        if (this.roomService.deleteRoomById(idRoom) == true) {
            return new ResponseEntity<>(HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
    
    //Update Room
    @PutMapping(path = "/api/rooms/{idRoom}", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    public ResponseEntity<Room> updateRoom(@PathVariable("idRoom") Integer id,
            @Valid @RequestBody Room room) {
        if (this.roomService.updateRoom(room,
                this.roomService.getRoomById(id)) == true) {
            return new ResponseEntity<>(HttpStatus.OK);
        }

        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }
    
}
