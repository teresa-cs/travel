/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.pojos;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author anhtu
 */
@Entity
@Table(name = "tour_hotel")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TourHotel.findAll", query = "SELECT t FROM TourHotel t"),
    @NamedQuery(name = "TourHotel.findByIdtour", query = "SELECT t FROM TourHotel t WHERE t.tourHotelPK.idtour = :idtour"),
    @NamedQuery(name = "TourHotel.findByIdhotel", query = "SELECT t FROM TourHotel t WHERE t.tourHotelPK.idhotel = :idhotel"),
    @NamedQuery(name = "TourHotel.findByDescription", query = "SELECT t FROM TourHotel t WHERE t.description = :description")})
public class TourHotel implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected TourHotelPK tourHotelPK;
    @Size(max = 45)
    @Column(name = "description")
    private String description;
    @JoinColumn(name = "idhotel", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Hotel hotel;
    @JoinColumn(name = "idtour", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Tour tour;

    public TourHotel() {
    }

    public TourHotel(TourHotelPK tourHotelPK) {
        this.tourHotelPK = tourHotelPK;
    }

    public TourHotel(int idtour, int idhotel) {
        this.tourHotelPK = new TourHotelPK(idtour, idhotel);
    }

    public TourHotelPK getTourHotelPK() {
        return tourHotelPK;
    }

    public void setTourHotelPK(TourHotelPK tourHotelPK) {
        this.tourHotelPK = tourHotelPK;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Hotel getHotel() {
        return hotel;
    }

    public void setHotel(Hotel hotel) {
        this.hotel = hotel;
    }

    public Tour getTour() {
        return tour;
    }

    public void setTour(Tour tour) {
        this.tour = tour;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (tourHotelPK != null ? tourHotelPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TourHotel)) {
            return false;
        }
        TourHotel other = (TourHotel) object;
        if ((this.tourHotelPK == null && other.tourHotelPK != null) || (this.tourHotelPK != null && !this.tourHotelPK.equals(other.tourHotelPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.tt.pojos.TourHotel[ tourHotelPK=" + tourHotelPK + " ]";
    }
    
}
