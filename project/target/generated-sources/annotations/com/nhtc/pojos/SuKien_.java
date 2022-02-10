package com.nhtc.pojos;

import com.nhtc.pojos.DichVu;
import com.nhtc.pojos.MonAn;
import com.nhtc.pojos.SanhTiec;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-12-26T18:32:26")
@StaticMetamodel(SuKien.class)
public class SuKien_ { 

    public static volatile SingularAttribute<SuKien, Integer> idSuKien;
    public static volatile SingularAttribute<SuKien, MonAn> loaiMonAnSK;
    public static volatile SingularAttribute<SuKien, String> tenSuKien;
    public static volatile SingularAttribute<SuKien, DichVu> dichVuKhac;
    public static volatile SingularAttribute<SuKien, SanhTiec> loaiSanhSK;

}