package com.tt.pojos;

import com.tt.pojos.OrderTour;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-12-18T21:59:35")
@StaticMetamodel(Discount.class)
public class Discount_ { 

    public static volatile SingularAttribute<Discount, String> code;
    public static volatile SingularAttribute<Discount, Integer> id;
    public static volatile SingularAttribute<Discount, Integer> percentPromotion;
    public static volatile CollectionAttribute<Discount, OrderTour> orderTourCollection;
    public static volatile SingularAttribute<Discount, String> promotion;

}