/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.stleia.beans;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author acreditacion
 */
@Entity
@Table(name = "equipoinsdustrial", catalog = "stleia", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Equipoinsdustrial.findAll", query = "SELECT e FROM Equipoinsdustrial e"),
    @NamedQuery(name = "Equipoinsdustrial.findByIdequipoinsdustrial", query = "SELECT e FROM Equipoinsdustrial e WHERE e.idequipoinsdustrial = :idequipoinsdustrial"),
    @NamedQuery(name = "Equipoinsdustrial.findByNombredeequipo", query = "SELECT e FROM Equipoinsdustrial e WHERE e.nombredeequipo = :nombredeequipo"),
    @NamedQuery(name = "Equipoinsdustrial.findByTipoequipo", query = "SELECT e FROM Equipoinsdustrial e WHERE e.tipoequipo = :tipoequipo"),
    @NamedQuery(name = "Equipoinsdustrial.findByFechaderegsitro", query = "SELECT e FROM Equipoinsdustrial e WHERE e.fechaderegsitro = :fechaderegsitro")})
public class Equipoinsdustrial implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idequipoinsdustrial")
    private Integer idequipoinsdustrial;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "nombredeequipo")
    private String nombredeequipo;
    @Size(max = 45)
    @Column(name = "tipoequipo")
    private String tipoequipo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fechaderegsitro")
    @Temporal(TemporalType.DATE)
    private Date fechaderegsitro;

    public Equipoinsdustrial() {
    }

    public Equipoinsdustrial(Integer idequipoinsdustrial) {
        this.idequipoinsdustrial = idequipoinsdustrial;
    }

    public Equipoinsdustrial(Integer idequipoinsdustrial, String nombredeequipo, Date fechaderegsitro) {
        this.idequipoinsdustrial = idequipoinsdustrial;
        this.nombredeequipo = nombredeequipo;
        this.fechaderegsitro = fechaderegsitro;
    }

    public Integer getIdequipoinsdustrial() {
        return idequipoinsdustrial;
    }

    public void setIdequipoinsdustrial(Integer idequipoinsdustrial) {
        this.idequipoinsdustrial = idequipoinsdustrial;
    }

    public String getNombredeequipo() {
        return nombredeequipo;
    }

    public void setNombredeequipo(String nombredeequipo) {
        this.nombredeequipo = nombredeequipo;
    }

    public String getTipoequipo() {
        return tipoequipo;
    }

    public void setTipoequipo(String tipoequipo) {
        this.tipoequipo = tipoequipo;
    }

    public Date getFechaderegsitro() {
        return fechaderegsitro;
    }

    public void setFechaderegsitro(Date fechaderegsitro) {
        this.fechaderegsitro = fechaderegsitro;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idequipoinsdustrial != null ? idequipoinsdustrial.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Equipoinsdustrial)) {
            return false;
        }
        Equipoinsdustrial other = (Equipoinsdustrial) object;
        if ((this.idequipoinsdustrial == null && other.idequipoinsdustrial != null) || (this.idequipoinsdustrial != null && !this.idequipoinsdustrial.equals(other.idequipoinsdustrial))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.stleia.beans.Equipoinsdustrial[ idequipoinsdustrial=" + idequipoinsdustrial + " ]";
    }
    
}
