/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
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
 * @author acreditacion
 */
@Entity
@Table(name = "productoaprocesar", catalog = "stleia", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Productoaprocesar.findAll", query = "SELECT p FROM Productoaprocesar p"),
    @NamedQuery(name = "Productoaprocesar.findByIdproductoaprocesar", query = "SELECT p FROM Productoaprocesar p WHERE p.idproductoaprocesar = :idproductoaprocesar"),
    @NamedQuery(name = "Productoaprocesar.findByNombreproducto", query = "SELECT p FROM Productoaprocesar p WHERE p.nombreproducto = :nombreproducto"),
    @NamedQuery(name = "Productoaprocesar.findByTempsetpointfreidora", query = "SELECT p FROM Productoaprocesar p WHERE p.tempsetpointfreidora = :tempsetpointfreidora"),
    @NamedQuery(name = "Productoaprocesar.findByTempaltafreidora", query = "SELECT p FROM Productoaprocesar p WHERE p.tempaltafreidora = :tempaltafreidora"),
    @NamedQuery(name = "Productoaprocesar.findByTempbajafreidora", query = "SELECT p FROM Productoaprocesar p WHERE p.tempbajafreidora = :tempbajafreidora"),
    @NamedQuery(name = "Productoaprocesar.findByNivelcargar", query = "SELECT p FROM Productoaprocesar p WHERE p.nivelcargar = :nivelcargar"),
    @NamedQuery(name = "Productoaprocesar.findByCantidadporhora", query = "SELECT p FROM Productoaprocesar p WHERE p.cantidadporhora = :cantidadporhora")})
public class Productoaprocesar implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idproductoaprocesar")
    private Integer idproductoaprocesar;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "nombreproducto")
    private String nombreproducto;
    @Basic(optional = false)
    @NotNull
    @Column(name = "tempsetpointfreidora")
    private double tempsetpointfreidora;
    @Basic(optional = false)
    @NotNull
    @Column(name = "tempaltafreidora")
    private double tempaltafreidora;
    @Basic(optional = false)
    @NotNull
    @Column(name = "tempbajafreidora")
    private double tempbajafreidora;
    @Basic(optional = false)
    @NotNull
    @Column(name = "nivelcargar")
    private int nivelcargar;
    @Basic(optional = false)
    @NotNull
    @Column(name = "cantidadporhora")
    private int cantidadporhora;

    public Productoaprocesar() {
    }

    public Productoaprocesar(Integer idproductoaprocesar) {
        this.idproductoaprocesar = idproductoaprocesar;
    }

    public Productoaprocesar(Integer idproductoaprocesar, String nombreproducto, double tempsetpointfreidora, double tempaltafreidora, double tempbajafreidora, int nivelcargar, int cantidadporhora) {
        this.idproductoaprocesar = idproductoaprocesar;
        this.nombreproducto = nombreproducto;
        this.tempsetpointfreidora = tempsetpointfreidora;
        this.tempaltafreidora = tempaltafreidora;
        this.tempbajafreidora = tempbajafreidora;
        this.nivelcargar = nivelcargar;
        this.cantidadporhora = cantidadporhora;
    }

    public Integer getIdproductoaprocesar() {
        return idproductoaprocesar;
    }

    public void setIdproductoaprocesar(Integer idproductoaprocesar) {
        this.idproductoaprocesar = idproductoaprocesar;
    }

    public String getNombreproducto() {
        return nombreproducto;
    }

    public void setNombreproducto(String nombreproducto) {
        this.nombreproducto = nombreproducto;
    }

    public double getTempsetpointfreidora() {
        return tempsetpointfreidora;
    }

    public void setTempsetpointfreidora(double tempsetpointfreidora) {
        this.tempsetpointfreidora = tempsetpointfreidora;
    }

    public double getTempaltafreidora() {
        return tempaltafreidora;
    }

    public void setTempaltafreidora(double tempaltafreidora) {
        this.tempaltafreidora = tempaltafreidora;
    }

    public double getTempbajafreidora() {
        return tempbajafreidora;
    }

    public void setTempbajafreidora(double tempbajafreidora) {
        this.tempbajafreidora = tempbajafreidora;
    }

    public int getNivelcargar() {
        return nivelcargar;
    }

    public void setNivelcargar(int nivelcargar) {
        this.nivelcargar = nivelcargar;
    }

    public int getCantidadporhora() {
        return cantidadporhora;
    }

    public void setCantidadporhora(int cantidadporhora) {
        this.cantidadporhora = cantidadporhora;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idproductoaprocesar != null ? idproductoaprocesar.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Productoaprocesar)) {
            return false;
        }
        Productoaprocesar other = (Productoaprocesar) object;
        if ((this.idproductoaprocesar == null && other.idproductoaprocesar != null) || (this.idproductoaprocesar != null && !this.idproductoaprocesar.equals(other.idproductoaprocesar))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.stleia.beans.Productoaprocesar[ idproductoaprocesar=" + idproductoaprocesar + " ]";
    }
    
}
