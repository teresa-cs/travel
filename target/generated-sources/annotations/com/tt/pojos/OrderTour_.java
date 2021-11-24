package com.tt.pojos;

import com.tt.pojos.Discount;
import com.tt.pojos.Receipt;
import com.tt.pojos.Tour;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-11-24T16:53:35")
@StaticMetamodel(OrderTour.class)
public class OrderTour_ { 

    public static volatile SingularAttribute<OrderTour, String> gmail;
    public static volatile SingularAttribute<OrderTour, Integer> total;
    public static volatile SingularAttribute<OrderTour, Date> createdDate;
    public static volatile SingularAttribute<OrderTour, String> phone;
    public static volatile SingularAttribute<OrderTour, Integer> children;
    public static volatile SingularAttribute<OrderTour, Tour> idtour;
    public static volatile SingularAttribute<OrderTour, Integer> id;
    public static volatile SingularAttribute<OrderTour, String> fullname;
    public static volatile CollectionAttribute<OrderTour, Receipt> receiptCollection;
    public static volatile SingularAttribute<OrderTour, Integer> adult;
    public static volatile SingularAttribute<OrderTour, String> status;
    public static volatile SingularAttribute<OrderTour, Discount> iddiscount;

}