package com.nhtc.pojos;

import com.nhtc.pojos.KhachHang;
import com.nhtc.pojos.NhanVien;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-12-26T21:34:49")
@StaticMetamodel(TaiKhoan.class)
public class TaiKhoan_ { 

    public static volatile SingularAttribute<TaiKhoan, String> loaiTaiKhoan;
    public static volatile CollectionAttribute<TaiKhoan, NhanVien> nhanVienCollection;
    public static volatile SingularAttribute<TaiKhoan, String> matKhau;
    public static volatile CollectionAttribute<TaiKhoan, KhachHang> khachHangCollection;
    public static volatile SingularAttribute<TaiKhoan, Integer> idTaiKhoan;
    public static volatile SingularAttribute<TaiKhoan, String> tenDangNhap;

}