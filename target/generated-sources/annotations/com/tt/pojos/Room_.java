package com.tt.pojos;

import com.tt.pojos.Hotel;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-09-25T15:10:21")
@StaticMetamodel(Room.class)
public class Room_ { 

    public static volatile SingularAttribute<Room, String> roomNumber;
    public static volatile SingularAttribute<Room, Hotel> idhotel;
    public static volatile SingularAttribute<Room, Integer> id;
    public static volatile SingularAttribute<Room, String> type;
    public static volatile SingularAttribute<Room, String> status;

}