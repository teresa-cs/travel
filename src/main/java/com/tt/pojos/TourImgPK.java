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
 * @author trang
 */
@Embeddable
public class TourImgPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "idtour")
    private int idtour;
    @Basic(optional = false)
    @NotNull
    @Column(name = "id_img")
    private int idImg;

    public TourImgPK() {
    }

    public TourImgPK(int idtour, int idImg) {
        this.idtour = idtour;
        this.idImg = idImg;
    }

    public int getIdtour() {
        return idtour;
    }

    public void setIdtour(int idtour) {
        this.idtour = idtour;
    }

    public int getIdImg() {
        return idImg;
    }

    public void setIdImg(int idImg) {
        this.idImg = idImg;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) idtour;
        hash += (int) idImg;
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
        if (this.idImg != other.idImg) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.tt.pojos.TourImgPK[ idtour=" + idtour + ", idImg=" + idImg + " ]";
    }
    
}
