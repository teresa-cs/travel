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
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author anhtu
 */
@Entity
@Table(name = "tour")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Tour.findAll", query = "SELECT t FROM Tour t"),
    @NamedQuery(name = "Tour.findById", query = "SELECT t FROM Tour t WHERE t.id = :id"),
    @NamedQuery(name = "Tour.findByName", query = "SELECT t FROM Tour t WHERE t.name = :name"),
    @NamedQuery(name = "Tour.findByDestination", query = "SELECT t FROM Tour t WHERE t.destination = :destination"),
    @NamedQuery(name = "Tour.findByDays", query = "SELECT t FROM Tour t WHERE t.days = :days"),
    @NamedQuery(name = "Tour.findByUnitprice", query = "SELECT t FROM Tour t WHERE t.unitprice = :unitprice"),
    @NamedQuery(name = "Tour.findByBegindate", query = "SELECT t FROM Tour t WHERE t.begindate = :begindate"),
    @NamedQuery(name = "Tour.findByEnddate", query = "SELECT t FROM Tour t WHERE t.enddate = :enddate"),
    @NamedQuery(name = "Tour.findByMeetingplace", query = "SELECT t FROM Tour t WHERE t.meetingplace = :meetingplace"),
    @NamedQuery(name = "Tour.findByAvt", query = "SELECT t FROM Tour t WHERE t.avt = :avt")})
public class Tour implements Serializable {

    private static long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 45)
    @Column(name = "name")
    private String name;
    @Size(max = 45)
    @Column(name = "destination")
    private String destination;
    @Column(name = "days")
    private Integer days;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "unitprice")
    private Double unitprice;
    @Column(name = "begindate")
    @Temporal(TemporalType.DATE)
    private Date begindate;
    @Column(name = "enddate")
    @Temporal(TemporalType.DATE)
    private Date enddate;
    @Size(max = 45)
    @Column(name = "meetingplace")
    private String meetingplace;
    @Size(max = 45)
    @Column(name = "avt")
    private String avt;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tour")
    private Collection<TourHotel> tourHotelCollection;
    @OneToMany(mappedBy = "idtour")
    private Collection<Receipt> receiptCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tour")
    private Collection<TourImg> tourImgCollection;
    
      @Transient
    private MultipartFile file;
      
      
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

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public Integer getDays() {
        return days;
    }

    public void setDays(Integer days) {
        this.days = days;
    }

    public Double getUnitprice() {
        return unitprice;
    }

    public void setUnitprice(Double unitprice) {
        this.unitprice = unitprice;
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

    public String getAvt() {
        return avt;
    }

    public void setAvt(String avt) {
        this.avt = avt;
    }

    @XmlTransient
    public Collection<TourHotel> getTourHotelCollection() {
        return tourHotelCollection;
    }

    public void setTourHotelCollection(Collection<TourHotel> tourHotelCollection) {
        this.tourHotelCollection = tourHotelCollection;
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

    /**
     * @return the serialVersionUID
     */
    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    /**
     * @param aSerialVersionUID the serialVersionUID to set
     */
    public static void setSerialVersionUID(long aSerialVersionUID) {
        serialVersionUID = aSerialVersionUID;
    }

    public MultipartFile getFile() {
        return file;
    }
    /**
     * @param file the file to set
     */
    public void setFile(MultipartFile file) {
        this.file = file;
    }
    
    
}
