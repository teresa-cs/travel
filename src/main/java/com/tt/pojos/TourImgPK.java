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
public class TourImgPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "idtour")
    private int idtour;
    @Basic(optional = false)
    @NotNull
    @Column(name = "idimg")
    private int idimg;

    public TourImgPK() {
    }

    public TourImgPK(int idtour, int idimg) {
        this.idtour = idtour;
        this.idimg = idimg;
    }

    public int getIdtour() {
        return idtour;
    }

    public void setIdtour(int idtour) {
        this.idtour = idtour;
    }

    public int getIdimg() {
        return idimg;
    }

    public void setIdimg(int idimg) {
        this.idimg = idimg;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) idtour;
        hash += (int) idimg;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TourImgPK)) {
            return false;
        }
        TourImgPK other = (TourImgPK) object;
        if (this.idtour != other.idtour) {
            return false;
        }
        if (this.idimg != other.idimg) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.tt.pojos.TourImgPK[ idtour=" + idtour + ", idimg=" + idimg + " ]";
    }
    
}
