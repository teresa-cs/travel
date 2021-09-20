/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.pojos;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;

/**
 *
 * @author anhtu
 */
@Embeddable
public class TourHotelPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "idtour")
    private int idtour;
    @Basic(optional = false)
    @NotNull
    @Column(name = "idhotel")
    private int idhotel;

    public TourHotelPK() {
    }

    public TourHotelPK(int idtour, int idhotel) {
        this.idtour = idtour;
        this.idhotel = idhotel;
    }

    public int getIdtour() {
        return idtour;
    }

    public void setIdtour(int idtour) {
        this.idtour = idtour;
    }

    public int getIdhotel() {
        return idhotel;
    }

    public void setIdhotel(int idhotel) {
        this.idhotel = idhotel;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) idtour;
        hash += (int) idhotel;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TourHotelPK)) {
            return false;
        }
        TourHotelPK other = (TourHotelPK) object;
        if (this.idtour != other.idtour) {
            return false;
        }
        if (this.idhotel != other.idhotel) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.tt.pojos.TourHotelPK[ idtour=" + idtour + ", idhotel=" + idhotel + " ]";
    }
    
}
