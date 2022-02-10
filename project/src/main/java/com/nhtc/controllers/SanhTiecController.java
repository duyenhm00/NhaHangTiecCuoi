/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhtc.controllers;

import com.nhtc.pojos.SanhTiec;
import com.nhtc.service.SanhTiecService;
import com.nhtc.validator.WebAppValidator;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author ACER
 */
@Controller
public class SanhTiecController {
    @Autowired
    private SanhTiecService sanhTiecService;
    @Autowired
    private WebAppValidator sanhTiecValidator;
    
    @InitBinder
    public void initBinder(WebDataBinder binder){
        binder.setValidator(sanhTiecValidator);
    }
    
    
    @GetMapping("/admin/sanhtiec")
    public String list(Model model){
        model.addAttribute("sanhtiec", new SanhTiec());
        return "sanhtiec";
    }
    
    @PostMapping("/admin/sanhtiec")
    public  String add(Model model, @ModelAttribute(value = "sanhtiec") @Valid SanhTiec sanhTiec,
            BindingResult result){
        
        if(!result.hasErrors()){
            if (this.sanhTiecService.addOrUpdate(sanhTiec) == true)
                return "redirect:/";
            else
                model.addAttribute("errMsg", "Something wrong!!!");
        }
        
        return "sanhtiec";
        
    }
}
