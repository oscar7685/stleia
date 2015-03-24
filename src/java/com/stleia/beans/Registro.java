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
import javax.persistence.Lob;
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
@Table(name = "registro", catalog = "stleia", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Registro.findAll", query = "SELECT r FROM Registro r"),
    @NamedQuery(name = "Registro.findByIdregistro", query = "SELECT r FROM Registro r WHERE r.idregistro = :idregistro"),
    @NamedQuery(name = "Registro.findByFechaderegistro", query = "SELECT r FROM Registro r WHERE r.fechaderegistro = :fechaderegistro"),
    @NamedQuery(name = "Registro.findByHoraderegistro", query = "SELECT r FROM Registro r WHERE r.horaderegistro = :horaderegistro"),
    @NamedQuery(name = "Registro.findByCargaraceite", query = "SELECT r FROM Registro r WHERE r.cargaraceite = :cargaraceite"),
    @NamedQuery(name = "Registro.findByLecturanivelaceite", query = "SELECT r FROM Registro r WHERE r.lecturanivelaceite = :lecturanivelaceite"),
    @NamedQuery(name = "Registro.findByTemperaturaactual", query = "SELECT r FROM Registro r WHERE r.temperaturaactual = :temperaturaactual"),
    @NamedQuery(name = "Registro.findByTemperaturasetpoint", query = "SELECT r FROM Registro r WHERE r.temperaturasetpoint = :temperaturasetpoint"),
    @NamedQuery(name = "Registro.findByTempalta", query = "SELECT r FROM Registro r WHERE r.tempalta = :tempalta"),
    @NamedQuery(name = "Registro.findByTemperaturadebaja", query = "SELECT r FROM Registro r WHERE r.temperaturadebaja = :temperaturadebaja"),
    @NamedQuery(name = "Registro.findByModoactual", query = "SELECT r FROM Registro r WHERE r.modoactual = :modoactual"),
    @NamedQuery(name = "Registro.findByProductoaprocesarIdproductoaprocesar", query = "SELECT r FROM Registro r WHERE r.productoaprocesarIdproductoaprocesar = :productoaprocesarIdproductoaprocesar"),
    @NamedQuery(name = "Registro.findByFreidoraIdfreidora", query = "SELECT r FROM Registro r WHERE r.freidoraIdfreidora = :freidoraIdfreidora"),
    @NamedQuery(name = "Registro.findByTanqueIdtanque", query = "SELECT r FROM Registro r WHERE r.tanqueIdtanque = :tanqueIdtanque")})
public class Registro implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idregistro")
    private Integer idregistro;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 15)
    @Column(name = "fechaderegistro")
    private String fechaderegistro;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 15)
    @Column(name = "horaderegistro")
    private String horaderegistro;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "valvulaentradaestado")
    private byte[] valvulaentradaestado;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "valvulasalidaestado")
    private byte[] valvulasalidaestado;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "alarmaacealto")
    private byte[] alarmaacealto;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "alarmaacemedio")
    private byte[] alarmaacemedio;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "alarmaacebaj")
    private byte[] alarmaacebaj;
    @Basic(optional = false)
    @NotNull
    @Column(name = "cargaraceite")
    private double cargaraceite;
    @Basic(optional = false)
    @NotNull
    @Column(name = "lecturanivelaceite")
    private double lecturanivelaceite;
    @Basic(optional = false)
    @NotNull
    @Column(name = "temperaturaactual")
    private double temperaturaactual;
    @Basic(optional = false)
    @NotNull
    @Column(name = "temperaturasetpoint")
    private double temperaturasetpoint;
    @Basic(optional = false)
    @NotNull
    @Column(name = "tempalta")
    private double tempalta;
    @Basic(optional = false)
    @NotNull
    @Column(name = "temperaturadebaja")
    private double temperaturadebaja;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "alarmatempalta")
    private byte[] alarmatempalta;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "alarmabaja")
    private byte[] alarmabaja;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "valvuladegasestado")
    private byte[] valvuladegasestado;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "modoactual")
    private String modoactual;
    @Basic(optional = false)
    @NotNull
    @Column(name = "productoaprocesar_idproductoaprocesar")
    private int productoaprocesarIdproductoaprocesar;
    @Basic(optional = false)
    @NotNull
    @Column(name = "freidora_idfreidora")
    private int freidoraIdfreidora;
    @Basic(optional = false)
    @NotNull
    @Column(name = "tanque_idtanque")
    private int tanqueIdtanque;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "encendidofreidora")
    private byte[] encendidofreidora;

    public Registro() {
    }

    public Registro(Integer idregistro) {
        this.idregistro = idregistro;
    }

    public Registro(Integer idregistro, String fechaderegistro, String horaderegistro, byte[] valvulaentradaestado, byte[] valvulasalidaestado, byte[] alarmaacealto, byte[] alarmaacemedio, byte[] alarmaacebaj, double cargaraceite, double lecturanivelaceite, double temperaturaactual, double temperaturasetpoint, double tempalta, double temperaturadebaja, byte[] alarmatempalta, byte[] alarmabaja, byte[] valvuladegasestado, String modoactual, int productoaprocesarIdproductoaprocesar, int freidoraIdfreidora, int tanqueIdtanque, byte[] encendidofreidora) {
        this.idregistro = idregistro;
        this.fechaderegistro = fechaderegistro;
        this.horaderegistro = horaderegistro;
        this.valvulaentradaestado = valvulaentradaestado;
        this.valvulasalidaestado = valvulasalidaestado;
        this.alarmaacealto = alarmaacealto;
        this.alarmaacemedio = alarmaacemedio;
        this.alarmaacebaj = alarmaacebaj;
        this.cargaraceite = cargaraceite;
        this.lecturanivelaceite = lecturanivelaceite;
        this.temperaturaactual = temperaturaactual;
        this.temperaturasetpoint = temperaturasetpoint;
        this.tempalta = tempalta;
        this.temperaturadebaja = temperaturadebaja;
        this.alarmatempalta = alarmatempalta;
        this.alarmabaja = alarmabaja;
        this.valvuladegasestado = valvuladegasestado;
        this.modoactual = modoactual;
        this.productoaprocesarIdproductoaprocesar = productoaprocesarIdproductoaprocesar;
        this.freidoraIdfreidora = freidoraIdfreidora;
        this.tanqueIdtanque = tanqueIdtanque;
        this.encendidofreidora = encendidofreidora;
    }

    public Integer getIdregistro() {
        return idregistro;
    }

    public void setIdregistro(Integer idregistro) {
        this.idregistro = idregistro;
    }

    public String getFechaderegistro() {
        return fechaderegistro;
    }

    public void setFechaderegistro(String fechaderegistro) {
        this.fechaderegistro = fechaderegistro;
    }

    public String getHoraderegistro() {
        return horaderegistro;
    }

    public void setHoraderegistro(String horaderegistro) {
        this.horaderegistro = horaderegistro;
    }

    public byte[] getValvulaentradaestado() {
        return valvulaentradaestado;
    }

    public void setValvulaentradaestado(byte[] valvulaentradaestado) {
        this.valvulaentradaestado = valvulaentradaestado;
    }

    public byte[] getValvulasalidaestado() {
        return valvulasalidaestado;
    }

    public void setValvulasalidaestado(byte[] valvulasalidaestado) {
        this.valvulasalidaestado = valvulasalidaestado;
    }

    public byte[] getAlarmaacealto() {
        return alarmaacealto;
    }

    public void setAlarmaacealto(byte[] alarmaacealto) {
        this.alarmaacealto = alarmaacealto;
    }

    public byte[] getAlarmaacemedio() {
        return alarmaacemedio;
    }

    public void setAlarmaacemedio(byte[] alarmaacemedio) {
        this.alarmaacemedio = alarmaacemedio;
    }

    public byte[] getAlarmaacebaj() {
        return alarmaacebaj;
    }

    public void setAlarmaacebaj(byte[] alarmaacebaj) {
        this.alarmaacebaj = alarmaacebaj;
    }

    public double getCargaraceite() {
        return cargaraceite;
    }

    public void setCargaraceite(double cargaraceite) {
        this.cargaraceite = cargaraceite;
    }

    public double getLecturanivelaceite() {
        return lecturanivelaceite;
    }

    public void setLecturanivelaceite(double lecturanivelaceite) {
        this.lecturanivelaceite = lecturanivelaceite;
    }

    public double getTemperaturaactual() {
        return temperaturaactual;
    }

    public void setTemperaturaactual(double temperaturaactual) {
        this.temperaturaactual = temperaturaactual;
    }

    public double getTemperaturasetpoint() {
        return temperaturasetpoint;
    }

    public void setTemperaturasetpoint(double temperaturasetpoint) {
        this.temperaturasetpoint = temperaturasetpoint;
    }

    public double getTempalta() {
        return tempalta;
    }

    public void setTempalta(double tempalta) {
        this.tempalta = tempalta;
    }

    public double getTemperaturadebaja() {
        return temperaturadebaja;
    }

    public void setTemperaturadebaja(double temperaturadebaja) {
        this.temperaturadebaja = temperaturadebaja;
    }

    public byte[] getAlarmatempalta() {
        return alarmatempalta;
    }

    public void setAlarmatempalta(byte[] alarmatempalta) {
        this.alarmatempalta = alarmatempalta;
    }

    public byte[] getAlarmabaja() {
        return alarmabaja;
    }

    public void setAlarmabaja(byte[] alarmabaja) {
        this.alarmabaja = alarmabaja;
    }

    public byte[] getValvuladegasestado() {
        return valvuladegasestado;
    }

    public void setValvuladegasestado(byte[] valvuladegasestado) {
        this.valvuladegasestado = valvuladegasestado;
    }

    public String getModoactual() {
        return modoactual;
    }

    public void setModoactual(String modoactual) {
        this.modoactual = modoactual;
    }

    public int getProductoaprocesarIdproductoaprocesar() {
        return productoaprocesarIdproductoaprocesar;
    }

    public void setProductoaprocesarIdproductoaprocesar(int productoaprocesarIdproductoaprocesar) {
        this.productoaprocesarIdproductoaprocesar = productoaprocesarIdproductoaprocesar;
    }

    public int getFreidoraIdfreidora() {
        return freidoraIdfreidora;
    }

    public void setFreidoraIdfreidora(int freidoraIdfreidora) {
        this.freidoraIdfreidora = freidoraIdfreidora;
    }

    public int getTanqueIdtanque() {
        return tanqueIdtanque;
    }

    public void setTanqueIdtanque(int tanqueIdtanque) {
        this.tanqueIdtanque = tanqueIdtanque;
    }

    public byte[] getEncendidofreidora() {
        return encendidofreidora;
    }

    public void setEncendidofreidora(byte[] encendidofreidora) {
        this.encendidofreidora = encendidofreidora;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idregistro != null ? idregistro.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Registro)) {
            return false;
        }
        Registro other = (Registro) object;
        if ((this.idregistro == null && other.idregistro != null) || (this.idregistro != null && !this.idregistro.equals(other.idregistro))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.stleia.beans.Registro[ idregistro=" + idregistro + " ]";
    }
    
}
