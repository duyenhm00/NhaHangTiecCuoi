/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhtc.validator;

import com.nhtc.pojos.MonAn;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author ACER
 */
@Component
public class TenMonAnValidator implements Validator{

    @Override
    public boolean supports(Class<?> clazz) {
        return  MonAn.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object o, Errors errors) {
        MonAn m = (MonAn) o;
        if (!m.getTenMonAn().contains("NHTC")) {
            errors.rejectValue("tenMonAn", "monan.tenMonAn.myErr");
        }
    }
    
}
