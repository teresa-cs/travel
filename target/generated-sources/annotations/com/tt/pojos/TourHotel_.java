package com.tt.pojos;

import com.tt.pojos.Hotel;
import com.tt.pojos.Tour;
import com.tt.pojos.TourHotelPK;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-09-24T15:10:37")
@StaticMetamodel(TourHotel.class)
public class TourHotel_ { 

    public static volatile SingularAttribute<TourHotel, TourHotelPK> tourHotelPK;
    public static volatile SingularAttribute<TourHotel, String> description;
    public static volatile SingularAttribute<TourHotel, Hotel> hotel;
    public static volatile SingularAttribute<TourHotel, Tour> tour;

}