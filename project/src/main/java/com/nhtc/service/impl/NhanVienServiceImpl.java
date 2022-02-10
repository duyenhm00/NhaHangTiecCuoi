/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhtc.service.impl;

import com.nhtc.pojos.NhanVien;
import com.nhtc.repository.NhanVienRepository;
import com.nhtc.service.NhanVienService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author USER
 */
@Service
public class NhanVienServiceImpl implements NhanVienService{

    @Autowired
    private NhanVienRepository nhanVienRepository;
    
    @Override
    public List<NhanVien> getNhanVien() {
        return this.nhanVienRepository.getNhanVien();
    }
    
}
