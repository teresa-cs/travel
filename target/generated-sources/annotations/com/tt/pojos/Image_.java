package com.tt.pojos;

import com.tt.pojos.TourImg;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-09-16T23:30:28")
@StaticMetamodel(Image.class)
public class Image_ { 

    public static volatile CollectionAttribute<Image, TourImg> tourImgCollection;
    public static volatile SingularAttribute<Image, String> name;
    public static volatile SingularAttribute<Image, String> description;
    public static volatile SingularAttribute<Image, Integer> id;
    public static volatile SingularAttribute<Image, String> url;

}