/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.pojos;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
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

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Size(max = 100)
    @Column(name = "fullname")
    private String fullname;
    @Size(max = 45)
    @Column(name = "gmail")
    private String gmail;
    // @Pattern(regexp="^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$", message="Invalid phone/fax format, should be as xxx-xxx-xxxx")//if the field contains phone or fax number consider using this annotation to enforce field validation
    @Size(max = 15)
    @Column(name = "phone")
    private String phone;
    @Column(name = "adult")
    private Integer adult;
    @Column(name = "children")
    private Integer children;
    @Column(name = "total")
    private Integer total;
    @JoinColumn(name = "iddiscount", referencedColumnName = "id")
    @ManyToOne(optional = false,  fetch = FetchType.EAGER)
    private Discount iddiscount;
    @JoinColumn(name = "idtour", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.EAGER)
    private Tour idtour;

    public OrderTour() {
    }

    public OrderTour(Integer id) {
        this.id = id;
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

    public Integer getAdult() {
        return adult;
    }

    public void setAdult(Integer adult) {
        this.adult = adult;
    }

    public Integer getChildren() {
        return children;
    }

    public void setChildren(Integer children) {
        this.children = children;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
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
    
}
