/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhtc.validator;

import com.nhtc.pojos.SanhTiec;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author ACER
 */
@Component
public class TenSanhTiecValidator implements Validator{

    @Override
    public boolean supports(Class<?> clazz) {
        return  SanhTiec.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object o, Errors errors) {
        SanhTiec m = (SanhTiec) o;
        if (!m.getTenSanhTiec().contains("-Số")) {
            errors.rejectValue("tenSanhTiec", "sanhtiec.tenSanhTiec.myErr");
        }
    }
    
}
