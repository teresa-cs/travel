package com.tt.pojos;

import com.tt.pojos.Tour;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-10-28T22:21:10")
@StaticMetamodel(Place.class)
public class Place_ { 

    public static volatile CollectionAttribute<Place, Tour> tourCollection;
    public static volatile SingularAttribute<Place, String> name;
    public static volatile SingularAttribute<Place, Integer> id;

}