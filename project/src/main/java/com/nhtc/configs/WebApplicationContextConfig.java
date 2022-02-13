/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhtc.configs;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.nhtc.formatter.LoaiMonFormatter;
import com.nhtc.formatter.LoaiSanhFormatter;
import com.nhtc.validator.TenMonAnValidator;
import com.nhtc.validator.TenSanhTiecValidator;
import com.nhtc.validator.WebAppValidator;
import java.util.HashSet;
import java.util.Set;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.format.FormatterRegistry;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.Validator;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

/**
 *
 * @author ACER
 */
@Configuration
@EnableWebMvc
@EnableTransactionManagement
@ComponentScan(basePackages = {
    "com.nhtc.controllers",
    "com.nhtc.repository",
    "com.nhtc.service",
    "com.nhtc.validator"
})          //{"com.htmd.controllers, com.htmd....."}
public class WebApplicationContextConfig implements WebMvcConfigurer{
    
    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
    configurer.enable();
    } 
    
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/css/**")
                .addResourceLocations("/resources/css/");
        
        registry.addResourceHandler("/images/**")
                .addResourceLocations("/resources/images/");
           
           registry.addResourceHandler("/js/**")
                   .addResourceLocations("/resources/js/");
           
           registry.addResourceHandler("/slide/**")
                   .addResourceLocations("/resources/img/slide/");
           registry.addResourceHandler("/team/**")
                   .addResourceLocations("/resources/img/team/");
           
            // All folder inside Vendor folder
           registry.addResourceHandler("/vendor/**")
                   .addResourceLocations("/resources/vendor/");
    }
    
    @Bean
    public InternalResourceViewResolver getInternalResourceViewResolver() {
        InternalResourceViewResolver resource = new InternalResourceViewResolver();
        
        resource.setViewClass(JstlView.class);
        resource.setPrefix("/WEB-INF/jsp/");
        resource.setSuffix(".jsp");
        
        return resource;
    }

    @Override
    public Validator getValidator() {
        return validator();
    }
    
//    @Override
//    public void addFormatters(FormatterRegistry registry){
//        registry.addFormatter(new  LoaiMonFormatter());
//    }
    
    @Override
    public void addFormatters(FormatterRegistry registry){
        registry.addFormatter(new  LoaiSanhFormatter());
    }
    
//    @Bean
//    public WebAppValidator monAnValidator(){
//        Set<Validator> springValidators = new HashSet<>();
//        springValidators.add(new TenMonAnValidator());
//        
//        WebAppValidator v= new WebAppValidator();
//        v.setSpringValidators(springValidators);
//        
//        return v;
//    }
    
     
    @Bean
    public WebAppValidator sanhTiecValidator(){
        Set<Validator> springValidators = new HashSet<>();
        springValidators.add(new TenSanhTiecValidator());
        
        WebAppValidator v= new WebAppValidator();
        v.setSpringValidators(springValidators);
        
        return v;
    }
    
    @Bean
    public LocalValidatorFactoryBean validator(){
        LocalValidatorFactoryBean v = new LocalValidatorFactoryBean();
        v.setValidationMessageSource(messageSource());
        
        return v;
    }
    
    @Bean
    public MessageSource messageSource() {
        ResourceBundleMessageSource source = new ResourceBundleMessageSource();
        source.setBasename("messages");
        
        return source;
    }
    
    @Bean
    public CommonsMultipartResolver multipartResolver(){
        CommonsMultipartResolver resolver = new CommonsMultipartResolver();
        resolver.setDefaultEncoding("UTF-8");
        return resolver;
    }
    
}
