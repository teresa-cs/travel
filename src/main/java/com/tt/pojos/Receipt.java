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
@Table(name = "receipt")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Receipt.findAll", query = "SELECT r FROM Receipt r"),
    @NamedQuery(name = "Receipt.findById", query = "SELECT r FROM Receipt r WHERE r.id = :id"),
    @NamedQuery(name = "Receipt.findByDate", query = "SELECT r FROM Receipt r WHERE r.date = :date"),
    @NamedQuery(name = "Receipt.findByQuantity", query = "SELECT r FROM Receipt r WHERE r.quantity = :quantity"),
    @NamedQuery(name = "Receipt.findByTotal", query = "SELECT r FROM Receipt r WHERE r.total = :total"),
    @NamedQuery(name = "Receipt.findByPaidby", query = "SELECT r FROM Receipt r WHERE r.paidby = :paidby")})
public class Receipt implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Size(max = 45)
    @Column(name = "date")
    private String date;
    @Size(max = 45)
    @Column(name = "quantity")
    private String quantity;
    @Size(max = 45)
    @Column(name = "total")
    private String total;
    @Size(max = 45)
    @Column(name = "paidby")
    private String paidby;
    @JoinColumn(name = "idtour", referencedColumnName = "id")
    @ManyToOne
    private Tour idtour;
    @JoinColumn(name = "iduser", referencedColumnName = "id")
    @ManyToOne
    private User iduser;

    public Receipt() {
    }

    public Receipt(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public String getPaidby() {
        return paidby;
    }

    public void setPaidby(String paidby) {
        this.paidby = paidby;
    }

    public Tour getIdtour() {
        return idtour;
    }

    public void setIdtour(Tour idtour) {
        this.idtour = idtour;
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
        if (!(object instanceof Receipt)) {
            return false;
        }
        Receipt other = (Receipt) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.tt.pojos.Receipt[ id=" + id + " ]";
    }
    
}
