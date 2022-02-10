/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhtc.service.impl;

import com.nhtc.pojos.KhachHang;
import com.nhtc.repository.KhachHangRepository;
import com.nhtc.service.KhachHangService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author USER
 */
@Service
public class KhachHangServiceImpl implements KhachHangService{
    @Autowired
    private KhachHangRepository khachHangRepository;
    
    @Override
    public List<KhachHang> getKhachHang() {
        return this.khachHangRepository.getKhachHang();
    }
}
