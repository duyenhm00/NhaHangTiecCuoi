/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhtc.pojos;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ACER
 */
@Entity
@Table(name = "khach_hang")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "KhachHang.findAll", query = "SELECT k FROM KhachHang k"),
    @NamedQuery(name = "KhachHang.findByIdKhachHang", query = "SELECT k FROM KhachHang k WHERE k.idKhachHang = :idKhachHang"),
    @NamedQuery(name = "KhachHang.findByHoTenKH", query = "SELECT k FROM KhachHang k WHERE k.hoTenKH = :hoTenKH"),
    @NamedQuery(name = "KhachHang.findByEmailKH", query = "SELECT k FROM KhachHang k WHERE k.emailKH = :emailKH"),
    @NamedQuery(name = "KhachHang.findBySdtKH", query = "SELECT k FROM KhachHang k WHERE k.sdtKH = :sdtKH"),
    @NamedQuery(name = "KhachHang.findByDiaChiKH", query = "SELECT k FROM KhachHang k WHERE k.diaChiKH = :diaChiKH"),
    @NamedQuery(name = "KhachHang.findByGioiTinhKH", query = "SELECT k FROM KhachHang k WHERE k.gioiTinhKH = :gioiTinhKH")})
public class KhachHang implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idKhachHang")
    private Integer idKhachHang;
    @Size(max = 45)
    @Column(name = "hoTenKH")
    private String hoTenKH;
    @Size(max = 45)
    @Column(name = "emailKH")
    private String emailKH;
    @Size(max = 45)
    @Column(name = "sdtKH")
    private String sdtKH;
    @Size(max = 50)
    @Column(name = "diaChiKH")
    private String diaChiKH;
    @Size(max = 5)
    @Column(name = "gioiTinhKH")
    private String gioiTinhKH;
    @JoinColumns({
        @JoinColumn(name = "idTKKH", referencedColumnName = "idTaiKhoan")})
    @ManyToOne
    private TaiKhoan taiKhoan;

    public KhachHang() {
    }

    public KhachHang(Integer idKhachHang) {
        this.idKhachHang = idKhachHang;
    }

    public Integer getIdKhachHang() {
        return idKhachHang;
    }

    public void setIdKhachHang(Integer idKhachHang) {
        this.idKhachHang = idKhachHang;
    }

    public String getHoTenKH() {
        return hoTenKH;
    }

    public void setHoTenKH(String hoTenKH) {
        this.hoTenKH = hoTenKH;
    }

    public String getEmailKH() {
        return emailKH;
    }

    public void setEmailKH(String emailKH) {
        this.emailKH = emailKH;
    }

    public String getSdtKH() {
        return sdtKH;
    }

    public void setSdtKH(String sdtKH) {
        this.sdtKH = sdtKH;
    }

    public String getDiaChiKH() {
        return diaChiKH;
    }

    public void setDiaChiKH(String diaChiKH) {
        this.diaChiKH = diaChiKH;
    }

    public String getGioiTinhKH() {
        return gioiTinhKH;
    }

    public void setGioiTinhKH(String gioiTinhKH) {
        this.gioiTinhKH = gioiTinhKH;
    }

    public TaiKhoan getTaiKhoan() {
        return taiKhoan;
    }

    public void setTaiKhoan(TaiKhoan taiKhoan) {
        this.taiKhoan = taiKhoan;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idKhachHang != null ? idKhachHang.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof KhachHang)) {
            return false;
        }
        KhachHang other = (KhachHang) object;
        if ((this.idKhachHang == null && other.idKhachHang != null) || (this.idKhachHang != null && !this.idKhachHang.equals(other.idKhachHang))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nhtc.pojos.KhachHang[ idKhachHang=" + idKhachHang + " ]";
    }
    
}