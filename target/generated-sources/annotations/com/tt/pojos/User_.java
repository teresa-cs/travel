package com.tt.pojos;

import com.tt.pojos.Role;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-09-24T15:10:37")
@StaticMetamodel(User.class)
public class User_ { 

    public static volatile SingularAttribute<User, String> password;
    public static volatile SingularAttribute<User, Role> roleId;
    public static volatile SingularAttribute<User, Integer> id;
    public static volatile SingularAttribute<User, String> username;
    public static volatile SingularAttribute<User, Short> status;

}