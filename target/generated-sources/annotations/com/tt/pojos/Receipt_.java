package com.tt.pojos;

import com.tt.pojos.OrderTour;
import com.tt.pojos.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-11-24T16:53:35")
@StaticMetamodel(Receipt.class)
public class Receipt_ { 

    public static volatile SingularAttribute<Receipt, Date> date;
    public static volatile SingularAttribute<Receipt, Double> total;
    public static volatile SingularAttribute<Receipt, User> iduser;
    public static volatile SingularAttribute<Receipt, String> quantity;
    public static volatile SingularAttribute<Receipt, String> paidby;
    public static volatile SingularAttribute<Receipt, Integer> id;
    public static volatile SingularAttribute<Receipt, OrderTour> idordertour;

}