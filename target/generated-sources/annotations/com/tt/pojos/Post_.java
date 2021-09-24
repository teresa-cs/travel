package com.tt.pojos;

import com.tt.pojos.Cmt;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-09-24T12:36:05")
@StaticMetamodel(Post.class)
public class Post_ { 

    public static volatile SingularAttribute<Post, Integer> id;
    public static volatile SingularAttribute<Post, String> content;
    public static volatile CollectionAttribute<Post, Cmt> cmtCollection;

}