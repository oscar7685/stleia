/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stleia.beans;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Usuario
 */
@Entity
@Table(name = "tanque", catalog = "stleia", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Tanque.findAll", query = "SELECT t FROM Tanque t"),
    @NamedQuery(name = "Tanque.findByIdtanque", query = "SELECT t FROM Tanque t WHERE t.idtanque = :idtanque"),
    @NamedQuery(name = "Tanque.findByEquipoinsdustrialIdequipoinsdustrial", query = "SELECT t FROM Tanque t WHERE t.equipoinsdustrialIdequipoinsdustrial = :equipoinsdustrialIdequipoinsdustrial"),
    @NamedQuery(name = "Tanque.findByCapacidad", query = "SELECT t FROM Tanque t WHERE t.capacidad = :capacidad"),
    @NamedQuery(name = "Tanque.findByMaterialDiseno", query = "SELECT t FROM Tanque t WHERE t.materialDiseno = :materialDiseno")})
public class Tanque implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idtanque")
    private Integer idtanque;
    @Column(name = "equipoinsdustrial_idequipoinsdustrial")
    private Integer equipoinsdustrialIdequipoinsdustrial;
    @Column(name = "capacidad")
    private Integer capacidad;
    @Size(max = 45)
    @Column(name = "material_diseno")
    private String materialDiseno;

    public Tanque() {
    }

    public Tanque(Integer idtanque) {
        this.idtanque = idtanque;
    }

    public Integer getIdtanque() {
        return idtanque;
    }

    public void setIdtanque(Integer idtanque) {
        this.idtanque = idtanque;
    }

    public Integer getEquipoinsdustrialIdequipoinsdustrial() {
        return equipoinsdustrialIdequipoinsdustrial;
    }

    public void setEquipoinsdustrialIdequipoinsdustrial(Integer equipoinsdustrialIdequipoinsdustrial) {
        this.equipoinsdustrialIdequipoinsdustrial = equipoinsdustrialIdequipoinsdustrial;
    }

    public Integer getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(Integer capacidad) {
        this.capacidad = capacidad;
    }

    public String getMaterialDiseno() {
        return materialDiseno;
    }

    public void setMaterialDiseno(String materialDiseno) {
        this.materialDiseno = materialDiseno;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idtanque != null ? idtanque.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Tanque)) {
            return false;
        }
        Tanque other = (Tanque) object;
        if ((this.idtanque == null && other.idtanque != null) || (this.idtanque != null && !this.idtanque.equals(other.idtanque))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.stleia.beans.Tanque[ idtanque=" + idtanque + " ]";
    }
    
}
