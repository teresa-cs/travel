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
@Table(name = "tour_img")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TourImg.findAll", query = "SELECT t FROM TourImg t"),
    @NamedQuery(name = "TourImg.findByIdtour", query = "SELECT t FROM TourImg t WHERE t.tourImgPK.idtour = :idtour"),
    @NamedQuery(name = "TourImg.findByIdimg", query = "SELECT t FROM TourImg t WHERE t.tourImgPK.idimg = :idimg"),
    @NamedQuery(name = "TourImg.findByDescription", query = "SELECT t FROM TourImg t WHERE t.description = :description")})
public class TourImg implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected TourImgPK tourImgPK;
    @Size(max = 45)
    @Column(name = "description")
    private String description;
    @JoinColumn(name = "idimg", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Image image;
    @JoinColumn(name = "idtour", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Tour tour;

    public TourImg() {
    }

    public TourImg(TourImgPK tourImgPK) {
        this.tourImgPK = tourImgPK;
    }

    public TourImg(int idtour, int idimg) {
        this.tourImgPK = new TourImgPK(idtour, idimg);
    }

    public TourImgPK getTourImgPK() {
        return tourImgPK;
    }

    public void setTourImgPK(TourImgPK tourImgPK) {
        this.tourImgPK = tourImgPK;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Image getImage() {
        return image;
    }

    public void setImage(Image image) {
        this.image = image;
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
        hash += (tourImgPK != null ? tourImgPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TourImg)) {
            return false;
        }
        TourImg other = (TourImg) object;
        if ((this.tourImgPK == null && other.tourImgPK != null) || (this.tourImgPK != null && !this.tourImgPK.equals(other.tourImgPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.tt.pojos.TourImg[ tourImgPK=" + tourImgPK + " ]";
    }
    
}
