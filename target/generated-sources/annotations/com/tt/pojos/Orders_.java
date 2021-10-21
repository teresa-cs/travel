package com.tt.pojos;

import com.tt.pojos.Room;
import com.tt.pojos.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-10-21T21:15:25")
@StaticMetamodel(Orders.class)
public class Orders_ { 

    public static volatile SingularAttribute<Orders, User> iduser;
    public static volatile SingularAttribute<Orders, String> quantity;
    public static volatile SingularAttribute<Orders, Date> checkin;
    public static volatile SingularAttribute<Orders, Room> idroom;
    public static volatile SingularAttribute<Orders, Integer> id;
    public static volatile SingularAttribute<Orders, Date> checkout;

}