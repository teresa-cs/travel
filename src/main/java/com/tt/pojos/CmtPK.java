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
public class CmtPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private int id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "iduser")
    private int iduser;
    @Basic(optional = false)
    @NotNull
    @Column(name = "idpost")
    private int idpost;

    public CmtPK() {
    }

    public CmtPK(int id, int iduser, int idpost) {
        this.id = id;
        this.iduser = iduser;
        this.idpost = idpost;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIduser() {
        return iduser;
    }

    public void setIduser(int iduser) {
        this.iduser = iduser;
    }

    public int getIdpost() {
        return idpost;
    }

    public void setIdpost(int idpost) {
        this.idpost = idpost;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) id;
        hash += (int) iduser;
        hash += (int) idpost;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CmtPK)) {
            return false;
        }
        CmtPK other = (CmtPK) object;
        if (this.id != other.id) {
            return false;
        }
        if (this.iduser != other.iduser) {
            return false;
        }
        if (this.idpost != other.idpost) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.tt.pojos.CmtPK[ id=" + id + ", iduser=" + iduser + ", idpost=" + idpost + " ]";
    }
    
}
