package com.tt.pojos;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-09-24T15:10:37")
@StaticMetamodel(Employee.class)
public class Employee_ { 

    public static volatile SingularAttribute<Employee, String> firstname;
    public static volatile SingularAttribute<Employee, Date> birthdate;
    public static volatile SingularAttribute<Employee, String> address;
    public static volatile SingularAttribute<Employee, String> phone;
    public static volatile SingularAttribute<Employee, Boolean> sex;
    public static volatile SingularAttribute<Employee, Integer> id;
    public static volatile SingularAttribute<Employee, String> lastname;

}