package com.tt.pojos;

import com.tt.pojos.Room;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-10-21T21:15:25")
@StaticMetamodel(Hotel.class)
public class Hotel_ { 

    public static volatile SingularAttribute<Hotel, String> address;
    public static volatile SingularAttribute<Hotel, String> rate;
    public static volatile SingularAttribute<Hotel, String> name;
    public static volatile CollectionAttribute<Hotel, Room> roomCollection;
    public static volatile SingularAttribute<Hotel, String> description;
    public static volatile SingularAttribute<Hotel, Integer> id;
    public static volatile SingularAttribute<Hotel, String> avt;

}