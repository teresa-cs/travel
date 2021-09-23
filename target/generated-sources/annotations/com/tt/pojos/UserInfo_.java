package com.tt.pojos;

import com.tt.pojos.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-09-23T12:43:53")
@StaticMetamodel(UserInfo.class)
public class UserInfo_ { 

    public static volatile SingularAttribute<UserInfo, User> iduser;
    public static volatile SingularAttribute<UserInfo, String> address;
    public static volatile SingularAttribute<UserInfo, String> mail;
    public static volatile SingularAttribute<UserInfo, String> phone;
    public static volatile SingularAttribute<UserInfo, String> sex;
    public static volatile SingularAttribute<UserInfo, Date> birth;
    public static volatile SingularAttribute<UserInfo, Integer> id;
    public static volatile SingularAttribute<UserInfo, String> fullname;
    public static volatile SingularAttribute<UserInfo, String> avt;

}