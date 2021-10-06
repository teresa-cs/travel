package com.tt.pojos;

import com.tt.pojos.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-10-06T16:02:56")
@StaticMetamodel(Role.class)
public class Role_ { 

    public static volatile CollectionAttribute<Role, User> userCollection;
    public static volatile SingularAttribute<Role, Integer> id;
    public static volatile SingularAttribute<Role, String> position;

}