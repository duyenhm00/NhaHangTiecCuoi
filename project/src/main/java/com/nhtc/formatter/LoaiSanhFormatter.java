/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhtc.formatter;

import com.nhtc.pojos.LoaiSanh;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author ACER
 */
public class LoaiSanhFormatter implements Formatter<LoaiSanh>{

    @Override
    public String print(LoaiSanh t, Locale locale) {
        return String.valueOf(t.getIdLoaiSanh());
    }

    @Override
    public LoaiSanh parse(String string, Locale locale) throws ParseException {
        LoaiSanh l = new LoaiSanh();
        l.setIdLoaiSanh(Integer.parseInt(string));
        
        return l;
    }
    
}