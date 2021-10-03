package com.tt.pojos;

import com.tt.pojos.Room;
import com.tt.pojos.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-10-03T00:25:27")
@StaticMetamodel(Booking.class)
public class Booking_ { 

    public static volatile SingularAttribute<Booking, User> iduser;
    public static volatile SingularAttribute<Booking, String> quantity;
    public static volatile SingularAttribute<Booking, Date> checkin;
    public static volatile SingularAttribute<Booking, Room> idroom;
    public static volatile SingularAttribute<Booking, Integer> id;
    public static volatile SingularAttribute<Booking, Date> checkout;

}