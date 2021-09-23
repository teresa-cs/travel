package com.tt.pojos;

import com.tt.pojos.Place;
import com.tt.pojos.Tour;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-09-23T15:44:20")
@StaticMetamodel(TourDetail.class)
public class TourDetail_ { 

    public static volatile SingularAttribute<TourDetail, String> image;
    public static volatile SingularAttribute<TourDetail, Place> idplace;
    public static volatile SingularAttribute<TourDetail, Tour> idtour;
    public static volatile SingularAttribute<TourDetail, Integer> id;

}