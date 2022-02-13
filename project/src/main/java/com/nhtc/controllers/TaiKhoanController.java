/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhtc.controllers;

import com.nhtc.pojos.TaiKhoan;
import com.nhtc.service.TaiKhoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author hp
 */
@Controller
public class TaiKhoanController {

    @Autowired
    private TaiKhoanService userDetailsService;

    @GetMapping("/login")
    public String Login() {

        return "login";
    }

    @GetMapping("/signup")
    public String SignupView(Model model) {
        model.addAttribute("taiKhoan", new TaiKhoan());
        return "signup";
    }
//    

    @PostMapping("/signup")
    public String Signup(Model model, @ModelAttribute(value = "taiKhoan") TaiKhoan user) {
        String errorMessage;

        if (this.userDetailsService.addUser(user) == true) {
            return "redirect:/login";
        } else {
            errorMessage = "Hệ thống hiện đang lỗi! Vui lòng thử lại sau";
        }
        model.addAttribute("errorMessage", errorMessage);

        return "signup";
    }

    @GetMapping(path = "/admin")
    public String admin(Model model) {

        return "dashboard";
    }
}
