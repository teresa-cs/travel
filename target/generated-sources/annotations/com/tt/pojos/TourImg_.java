package com.tt.pojos;

import com.tt.pojos.Image;
import com.tt.pojos.Tour;
import com.tt.pojos.TourImgPK;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-09-16T23:30:28")
@StaticMetamodel(TourImg.class)
public class TourImg_ { 

    public static volatile SingularAttribute<TourImg, Image> image;
    public static volatile SingularAttribute<TourImg, TourImgPK> tourImgPK;
    public static volatile SingularAttribute<TourImg, String> description;
    public static volatile SingularAttribute<TourImg, Tour> tour;

}