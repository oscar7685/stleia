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
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Oscar
 */
@Entity
@Table(name = "freidora", catalog = "stleia", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Freidora.findAll", query = "SELECT f FROM Freidora f"),
    @NamedQuery(name = "Freidora.findByIdfreidora", query = "SELECT f FROM Freidora f WHERE f.idfreidora = :idfreidora"),
    @NamedQuery(name = "Freidora.findByValvuladegas", query = "SELECT f FROM Freidora f WHERE f.valvuladegas = :valvuladegas"),
    @NamedQuery(name = "Freidora.findByPotencia", query = "SELECT f FROM Freidora f WHERE f.potencia = :potencia"),
    @NamedQuery(name = "Freidora.findByTanqueIdtanque", query = "SELECT f FROM Freidora f WHERE f.tanqueIdtanque = :tanqueIdtanque")})
public class Freidora implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idfreidora")
    private Integer idfreidora;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "valvuladegas")
    private String valvuladegas;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "potencia")
    private String potencia;
    @Basic(optional = false)
    @NotNull
    @Column(name = "tanque_idtanque")
    private int tanqueIdtanque;

    public Freidora() {
    }

    public Freidora(Integer idfreidora) {
        this.idfreidora = idfreidora;
    }

    public Freidora(Integer idfreidora, String valvuladegas, String potencia, int tanqueIdtanque) {
        this.idfreidora = idfreidora;
        this.valvuladegas = valvuladegas;
        this.potencia = potencia;
        this.tanqueIdtanque = tanqueIdtanque;
    }

    public Integer getIdfreidora() {
        return idfreidora;
    }

    public void setIdfreidora(Integer idfreidora) {
        this.idfreidora = idfreidora;
    }

    public String getValvuladegas() {
        return valvuladegas;
    }

    public void setValvuladegas(String valvuladegas) {
        this.valvuladegas = valvuladegas;
    }

    public String getPotencia() {
        return potencia;
    }

    public void setPotencia(String potencia) {
        this.potencia = potencia;
    }

    public int getTanqueIdtanque() {
        return tanqueIdtanque;
    }

    public void setTanqueIdtanque(int tanqueIdtanque) {
        this.tanqueIdtanque = tanqueIdtanque;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idfreidora != null ? idfreidora.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Freidora)) {
            return false;
        }
        Freidora other = (Freidora) object;
        if ((this.idfreidora == null && other.idfreidora != null) || (this.idfreidora != null && !this.idfreidora.equals(other.idfreidora))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.stleia.beans.Freidora[ idfreidora=" + idfreidora + " ]";
    }
    
}
