/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhtc.formatter;

import com.nhtc.pojos.LoaiMon;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author ACER
 */
public class LoaiMonFormatter implements Formatter<LoaiMon>{

    @Override
    public String print(LoaiMon t, Locale locale) {
        return String.valueOf(t.getIdLoaiMon());
    }

    @Override
    public LoaiMon parse(String string, Locale locale) throws ParseException {
        LoaiMon l = new LoaiMon();
        l.setIdLoaiMon(Integer.parseInt(string));
        
        return l;
    }
    
}
