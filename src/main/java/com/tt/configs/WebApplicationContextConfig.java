/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.configs;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

/**
 *
 * @author anhtu
 */

@Configuration
@EnableWebMvc
@EnableTransactionManagement
@ComponentScan(basePackages = {
    "com.tt.controllers",
    "com.tt.repository",
    "com.tt.service"
})
public class WebApplicationContextConfig implements WebMvcConfigurer{

    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
       configurer.enable();
    }
    
    @Bean
    public InternalResourceViewResolver getInternalResourceViewResolver(){
        InternalResourceViewResolver resource = new InternalResourceViewResolver();
        
        resource.setViewClass(JstlView.class);
        resource.setPrefix("/WEB-INF/jsp/");
        resource.setSuffix(".jsp");
        
        return resource;
    }
    
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry){
        registry.addResourceHandler("/css/**").addResourceLocations("/template/css");
        registry.addResourceHandler("/fonts/**").addResourceLocations("/template/fonts");
        registry.addResourceHandler("/images/**").addResourceLocations("/template/images");
        registry.addResourceHandler("/js/**").addResourceLocations("/template/js");
        registry.addResourceHandler("/sass/**").addResourceLocations("/template/sass");                
    }
    
}
