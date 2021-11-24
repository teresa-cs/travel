package com.tt.pojos;

import com.tt.pojos.Room;
import com.tt.pojos.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-11-24T16:53:35")
@StaticMetamodel(OrderHotel.class)
public class OrderHotel_ { 

    public static volatile SingularAttribute<OrderHotel, User> iduser;
    public static volatile SingularAttribute<OrderHotel, String> quantity;
    public static volatile SingularAttribute<OrderHotel, Date> checkin;
    public static volatile SingularAttribute<OrderHotel, String> phone;
    public static volatile SingularAttribute<OrderHotel, Room> idroom;
    public static volatile SingularAttribute<OrderHotel, Integer> id;
    public static volatile SingularAttribute<OrderHotel, String> fullname;
    public static volatile SingularAttribute<OrderHotel, Date> checkout;
    public static volatile SingularAttribute<OrderHotel, String> status;

}