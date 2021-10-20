package com.tt.pojos;

import com.tt.pojos.Cmt;
import com.tt.pojos.Customer;
import com.tt.pojos.Employee;
import com.tt.pojos.Orders;
import com.tt.pojos.Receipt;
import com.tt.pojos.Role;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-10-20T21:09:20")
@StaticMetamodel(User.class)
public class User_ { 

    public static volatile SingularAttribute<User, String> password;
    public static volatile CollectionAttribute<User, Customer> customerCollection;
    public static volatile SingularAttribute<User, Role> roleId;
    public static volatile CollectionAttribute<User, Employee> employeeCollection;
    public static volatile SingularAttribute<User, Integer> id;
    public static volatile CollectionAttribute<User, Receipt> receiptCollection;
    public static volatile CollectionAttribute<User, Orders> bookingCollection;
    public static volatile SingularAttribute<User, String> avt;
    public static volatile SingularAttribute<User, String> username;
    public static volatile SingularAttribute<User, Short> status;
    public static volatile CollectionAttribute<User, Cmt> cmtCollection;

}