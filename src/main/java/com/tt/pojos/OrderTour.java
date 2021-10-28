/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.pojos;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author anhtu
 */
@Entity
@Table(name = "order_tour")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "OrderTour.findAll", query = "SELECT o FROM OrderTour o"),
    @NamedQuery(name = "OrderTour.findById", query = "SELECT o FROM OrderTour o WHERE o.id = :id"),
    @NamedQuery(name = "OrderTour.findByFullname", query = "SELECT o FROM OrderTour o WHERE o.fullname = :fullname"),
    @NamedQuery(name = "OrderTour.findByGmail", query = "SELECT o FROM OrderTour o WHERE o.gmail = :gmail"),
    @NamedQuery(name = "OrderTour.findByPhone", query = "SELECT o FROM OrderTour o WHERE o.phone = :phone"),
    @NamedQuery(name = "OrderTour.findByAdult", query = "SELECT o FROM OrderTour o WHERE o.adult = :adult"),
    @NamedQuery(name = "OrderTour.findByChildren", query = "SELECT o FROM OrderTour o WHERE o.children = :children"),
    @NamedQuery(name = "OrderTour.findByTotal", query = "SELECT o FROM OrderTour o WHERE o.total = :total")})
public class OrderTour implements Serializable {

    @JoinColumn(name = "idtour", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Tour idtour;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "fullname")
    private String fullname;
    @Size(max = 45)
    @Column(name = "gmail")
    private String gmail;
    // @Pattern(regexp="^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$", message="Invalid phone/fax format, should be as xxx-xxx-xxxx")//if the field contains phone or fax number consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 15)
    @Column(name = "phone")
    private String phone;
    @Basic(optional = false)
    @NotNull
    @Column(name = "adult")
    private int adult;
    @Basic(optional = false)
    @NotNull
    @Column(name = "children")
    private int children;
    @Basic(optional = false)
    @NotNull
    @Column(name = "total")
    private int total;
    @Column(name = "created_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
    @JoinColumn(name = "iddiscount", referencedColumnName = "id")
    @ManyToOne
    @JsonIgnore
    private Discount iddiscount;

    public OrderTour() {
        this.createdDate= new Date();
    }

    public OrderTour(Integer id) {
        this.id = id;
    }

    public OrderTour(Integer id, String fullname, String phone, int adult, int children, int total,Tour idtour) {
        this.id = id;
        this.fullname = fullname;
        this.phone = phone;
        this.adult = adult;
        this.children = children;
        this.total = total;
        this.idtour = idtour;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getAdult() {
        return adult;
    }

    public void setAdult(int adult) {
        this.adult = adult;
    }

    public int getChildren() {
        return children;
    }

    public void setChildren(int children) {
        this.children = children;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof OrderTour)) {
            return false;
        }
        OrderTour other = (OrderTour) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.tt.pojos.OrderTour[ id=" + id + " ]";
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public Discount getIddiscount() {
        return iddiscount;
    }

    public void setIddiscount(Discount iddiscount) {
        this.iddiscount = iddiscount;
    }

    public Tour getIdtour() {
        return idtour;
    }

    public void setIdtour(Tour idtour) {
        this.idtour = idtour;
    }


    
}
