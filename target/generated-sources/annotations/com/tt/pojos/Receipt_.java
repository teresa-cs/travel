package com.tt.pojos;

import com.tt.pojos.Tour;
import com.tt.pojos.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-10-03T11:47:22")
@StaticMetamodel(Receipt.class)
public class Receipt_ { 

    public static volatile SingularAttribute<Receipt, String> date;
    public static volatile SingularAttribute<Receipt, String> total;
    public static volatile SingularAttribute<Receipt, User> iduser;
    public static volatile SingularAttribute<Receipt, String> quantity;
    public static volatile SingularAttribute<Receipt, String> paidby;
    public static volatile SingularAttribute<Receipt, Tour> idtour;
    public static volatile SingularAttribute<Receipt, Integer> id;

}