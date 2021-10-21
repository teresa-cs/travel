package com.tt.pojos;

import com.tt.pojos.Receipt;
import com.tt.pojos.TourDetail;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-10-21T21:15:25")
@StaticMetamodel(Tour.class)
public class Tour_ { 

    public static volatile SingularAttribute<Tour, Date> begindate;
    public static volatile SingularAttribute<Tour, Date> enddate;
    public static volatile SingularAttribute<Tour, String> destination;
    public static volatile SingularAttribute<Tour, String> name;
    public static volatile SingularAttribute<Tour, Integer> days;
    public static volatile SingularAttribute<Tour, Integer> id;
    public static volatile CollectionAttribute<Tour, TourDetail> tourDetailCollection;
    public static volatile CollectionAttribute<Tour, Receipt> receiptCollection;
    public static volatile SingularAttribute<Tour, Double> unitprice;
    public static volatile SingularAttribute<Tour, String> meetingplace;
    public static volatile SingularAttribute<Tour, String> avt;

}