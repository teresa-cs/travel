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
@Table(name = "cmt")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Cmt.findAll", query = "SELECT c FROM Cmt c"),
    @NamedQuery(name = "Cmt.findById", query = "SELECT c FROM Cmt c WHERE c.cmtPK.id = :id"),
    @NamedQuery(name = "Cmt.findByIduser", query = "SELECT c FROM Cmt c WHERE c.cmtPK.iduser = :iduser"),
    @NamedQuery(name = "Cmt.findByIdpost", query = "SELECT c FROM Cmt c WHERE c.cmtPK.idpost = :idpost"),
    @NamedQuery(name = "Cmt.findByComment", query = "SELECT c FROM Cmt c WHERE c.comment = :comment")})
public class Cmt implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected CmtPK cmtPK;
    @Size(max = 45)
    @Column(name = "comment")
    private String comment;
    @JoinColumn(name = "idpost", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Post post;
    @JoinColumn(name = "iduser", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private User user;

    public Cmt() {
    }

    public Cmt(CmtPK cmtPK) {
        this.cmtPK = cmtPK;
    }

    public Cmt(int id, int iduser, int idpost) {
        this.cmtPK = new CmtPK(id, iduser, idpost);
    }

    public CmtPK getCmtPK() {
        return cmtPK;
    }

    public void setCmtPK(CmtPK cmtPK) {
        this.cmtPK = cmtPK;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cmtPK != null ? cmtPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Cmt)) {
            return false;
        }
        Cmt other = (Cmt) object;
        if ((this.cmtPK == null && other.cmtPK != null) || (this.cmtPK != null && !this.cmtPK.equals(other.cmtPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.tt.pojos.Cmt[ cmtPK=" + cmtPK + " ]";
    }
    
}
