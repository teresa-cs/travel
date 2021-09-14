/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.pojos;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author trang
 */
@Entity
@Table(name = "tour")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Tour.findAll", query = "SELECT t FROM Tour t"),
    @NamedQuery(name = "Tour.findById", query = "SELECT t FROM Tour t WHERE t.id = :id"),
    @NamedQuery(name = "Tour.findByName", query = "SELECT t FROM Tour t WHERE t.name = :name"),
    @NamedQuery(name = "Tour.findByBegindate", query = "SELECT t FROM Tour t WHERE t.begindate = :begindate"),
    @NamedQuery(name = "Tour.findByEnddate", query = "SELECT t FROM Tour t WHERE t.enddate = :enddate"),
    @NamedQuery(name = "Tour.findByMeetingplace", query = "SELECT t FROM Tour t WHERE t.meetingplace = :meetingplace"),
    @NamedQuery(name = "Tour.findByUnitprice", query = "SELECT t FROM Tour t WHERE t.unitprice = :unitprice"),
    @NamedQuery(name = "Tour.findByDiscount", query = "SELECT t FROM Tour t WHERE t.discount = :discount"),
    @NamedQuery(name = "Tour.findByTotal", query = "SELECT t FROM Tour t WHERE t.total = :total")})
public class Tour implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 45)
    @Column(name = "name")
    private String name;
    @Column(name = "begindate")
    @Temporal(TemporalType.DATE)
    private Date begindate;
    @Column(name = "enddate")
    @Temporal(TemporalType.DATE)
    private Date enddate;
    @Size(max = 45)
    @Column(name = "meetingplace")
    private String meetingplace;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "unitprice")
    private Double unitprice;
    @Column(name = "discount")
    private Integer discount;
    @Column(name = "total")
    private Double total;
    @ManyToMany(mappedBy = "tourCollection")
    private Collection<Hotel> hotelCollection;
    @OneToMany(mappedBy = "idtour")
    private Collection<Receipt> receiptCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tour")
    private Collection<TourImg> tourImgCollection;

    public Tour() {
    }

    public Tour(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBegindate() {
        return begindate;
    }

    public void setBegindate(Date begindate) {
        this.begindate = begindate;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    public String getMeetingplace() {
        return meetingplace;
    }

    public void setMeetingplace(String meetingplace) {
        this.meetingplace = meetingplace;
    }

    public Double getUnitprice() {
        return unitprice;
    }

    public void setUnitprice(Double unitprice) {
        this.unitprice = unitprice;
    }

    public Integer getDiscount() {
        return discount;
    }

    public void setDiscount(Integer discount) {
        this.discount = discount;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    @XmlTransient
    public Collection<Hotel> getHotelCollection() {
        return hotelCollection;
    }

    public void setHotelCollection(Collection<Hotel> hotelCollection) {
        this.hotelCollection = hotelCollection;
    }

    @XmlTransient
    public Collection<Receipt> getReceiptCollection() {
        return receiptCollection;
    }

    public void setReceiptCollection(Collection<Receipt> receiptCollection) {
        this.receiptCollection = receiptCollection;
    }

    @XmlTransient
    public Collection<TourImg> getTourImgCollection() {
        return tourImgCollection;
    }

    public void setTourImgCollection(Collection<TourImg> tourImgCollection) {
        this.tourImgCollection = tourImgCollection;
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
        if (!(object instanceof Tour)) {
            return false;
        }
        Tour other = (Tour) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.tt.pojos.Tour[ id=" + id + " ]";
    }
    
}
