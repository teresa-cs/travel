package com.tt.pojos;

import com.tt.pojos.Hotel;
import com.tt.pojos.OrderHotel;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-12-30T22:40:18")
@StaticMetamodel(Room.class)
public class Room_ { 

    public static volatile SingularAttribute<Room, String> image;
    public static volatile SingularAttribute<Room, String> price;
    public static volatile SingularAttribute<Room, String> description;
    public static volatile SingularAttribute<Room, Hotel> idhotel;
    public static volatile SingularAttribute<Room, String> maximum;
    public static volatile SingularAttribute<Room, Integer> id;
    public static volatile SingularAttribute<Room, String> type;
    public static volatile CollectionAttribute<Room, OrderHotel> bookingCollection;

}