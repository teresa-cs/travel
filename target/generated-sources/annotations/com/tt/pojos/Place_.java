package com.tt.pojos;

import com.tt.pojos.TourDetail;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-09-24T15:10:37")
@StaticMetamodel(Place.class)
public class Place_ { 

    public static volatile SingularAttribute<Place, String> name;
    public static volatile SingularAttribute<Place, Integer> id;
    public static volatile CollectionAttribute<Place, TourDetail> tourDetailCollection;

}