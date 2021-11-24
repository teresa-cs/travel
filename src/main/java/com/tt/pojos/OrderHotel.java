/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.pojos;

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
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author anhtu
 */
@Entity
@Table(name = "order_hotel")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "OrderHotel.findAll", query = "SELECT o FROM OrderHotel o"),
    @NamedQuery(name = "OrderHotel.findById", query = "SELECT o FROM OrderHotel o WHERE o.id = :id"),
    @NamedQuery(name = "OrderHotel.findByFullname", query = "SELECT o FROM OrderHotel o WHERE o.fullname = :fullname"),
    @NamedQuery(name = "OrderHotel.findByPhone", query = "SELECT o FROM OrderHotel o WHERE o.phone = :phone"),
    @NamedQuery(name = "OrderHotel.findByQuantity", query = "SELECT o FROM OrderHotel o WHERE o.quantity = :quantity"),
    @NamedQuery(name = "OrderHotel.findByCheckin", query = "SELECT o FROM OrderHotel o WHERE o.checkin = :checkin"),
    @NamedQuery(name = "OrderHotel.findByCheckout", query = "SELECT o FROM OrderHotel o WHERE o.checkout = :checkout"),
    @NamedQuery(name = "OrderHotel.findByStatus", query = "SELECT o FROM OrderHotel o WHERE o.status = :status")})
public class OrderHotel implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 45)
    @Column(name = "fullname")
    private String fullname;
    // @Pattern(regexp="^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$", message="Invalid phone/fax format, should be as xxx-xxx-xxxx")//if the field contains phone or fax number consider using this annotation to enforce field validation
    @Size(max = 15)
    @Column(name = "phone")
    private String phone;
    @Size(max = 45)
    @Column(name = "quantity")
    private String quantity;
    @Column(name = "checkin")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date checkin;
    @Column(name = "checkout")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date checkout;
    @Size(max = 20)
    @Column(name = "status")
    private String status;
    @JoinColumn(name = "idroom", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Room idroom;
    @JoinColumn(name = "iduser", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private User iduser;

    public OrderHotel() {
    }

    public OrderHotel(Integer id) {
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public Date getCheckin() {
        return checkin;
    }

    public void setCheckin(Date checkin) {
        this.checkin = checkin;
    }

    public Date getCheckout() {
        return checkout;
    }

    public void setCheckout(Date checkout) {
        this.checkout = checkout;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Room getIdroom() {
        return idroom;
    }

    public void setIdroom(Room idroom) {
        this.idroom = idroom;
    }

    public User getIduser() {
        return iduser;
    }

    public void setIduser(User iduser) {
        this.iduser = iduser;
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
        if (!(object instanceof OrderHotel)) {
            return false;
        }
        OrderHotel other = (OrderHotel) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.tt.pojos.OrderHotel[ id=" + id + " ]";
    }
    
}
