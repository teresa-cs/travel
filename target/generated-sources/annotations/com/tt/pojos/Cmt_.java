package com.tt.pojos;

import com.tt.pojos.Post;
import com.tt.pojos.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-10-03T13:31:22")
@StaticMetamodel(Cmt.class)
public class Cmt_ { 

    public static volatile SingularAttribute<Cmt, User> iduser;
    public static volatile SingularAttribute<Cmt, Date> createdDate;
    public static volatile SingularAttribute<Cmt, Post> idpost;
    public static volatile SingularAttribute<Cmt, String> comment;
    public static volatile SingularAttribute<Cmt, Integer> id;

}