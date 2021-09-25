package com.tt.pojos;

import com.tt.pojos.CmtPK;
import com.tt.pojos.Post;
import com.tt.pojos.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-09-25T15:10:21")
@StaticMetamodel(Cmt.class)
public class Cmt_ { 

    public static volatile SingularAttribute<Cmt, CmtPK> cmtPK;
    public static volatile SingularAttribute<Cmt, Post> post;
    public static volatile SingularAttribute<Cmt, String> comment;
    public static volatile SingularAttribute<Cmt, User> user;

}