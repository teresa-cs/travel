package com.tt.pojos;

import com.tt.pojos.Discount;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-10-24T14:22:20")
@StaticMetamodel(OrderTour.class)
public class OrderTour_ { 

    public static volatile SingularAttribute<OrderTour, String> gmail;
    public static volatile SingularAttribute<OrderTour, Integer> total;
    public static volatile SingularAttribute<OrderTour, Date> createdDate;
    public static volatile SingularAttribute<OrderTour, String> phone;
    public static volatile SingularAttribute<OrderTour, Integer> children;
    public static volatile SingularAttribute<OrderTour, Integer> id;
    public static volatile SingularAttribute<OrderTour, String> fullname;
    public static volatile SingularAttribute<OrderTour, Integer> adult;
    public static volatile SingularAttribute<OrderTour, Discount> iddiscount;

}