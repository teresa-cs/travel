/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.configs;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.tt.validator.CommentValidator;
import com.tt.validator.HotelValidator;
import com.tt.validator.OrderValidator;
import com.tt.validator.PostValidator;
import com.tt.validator.RoomValidator;
import com.tt.validator.TourNameValidator;
import com.tt.validator.WebAppValidator;
import java.util.HashSet;
import java.util.Set;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
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
 * @author anhtu
 */
@Configuration
@EnableWebMvc
@EnableTransactionManagement
@ComponentScan(basePackages = {
    "com.tt.controllers",
    "com.tt.repository",
    "com.tt.service",
    "com.tt.validator"
})
public class WebApplicationContextConfig implements WebMvcConfigurer {

    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
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
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/css/**").addResourceLocations("/template/css");
        registry.addResourceHandler("/fonts/**").addResourceLocations("/template/fonts");
        registry.addResourceHandler("/images/**").addResourceLocations("/template/images");
        registry.addResourceHandler("/js/**").addResourceLocations("/template/js");
    }

    @Bean
    public CommonsMultipartResolver multipartResolver() {
        CommonsMultipartResolver resolver
                = new CommonsMultipartResolver();
        resolver.setDefaultEncoding("UTF-8");
        return resolver;
    }

    @Override
    public Validator getValidator() {
        return validator();
    }

    @Bean
    public WebAppValidator tourValidator() {
        Set<Validator> springValidators = new HashSet<>();
        springValidators.add(new TourNameValidator());
        WebAppValidator v = new WebAppValidator();
        v.setSpringValidator(springValidators);
        return v;
    }
    
    @Bean
    public WebAppValidator hotelValidator() {
        Set<Validator> springValidators = new HashSet<>();
        springValidators.add(new HotelValidator());
        WebAppValidator v = new WebAppValidator();
        v.setSpringValidator(springValidators);
        return v;
    }
    
    @Bean
    public WebAppValidator roomValidator() {
        Set<Validator> springValidators = new HashSet<>();
        springValidators.add(new RoomValidator());
        WebAppValidator v = new WebAppValidator();
        v.setSpringValidator(springValidators);
        return v;
    }
    
    @Bean
    public WebAppValidator orderValidator() {
        Set<Validator> springValidators = new HashSet<>();
        springValidators.add(new OrderValidator());
        WebAppValidator v = new WebAppValidator();
        v.setSpringValidator(springValidators);
        return v;
    }
    
//    @Bean
//    public WebAppValidator commentValidator() {
//        Set<Validator> springValidators = new HashSet<>();
//        springValidators.add(new CommentValidator());
//        WebAppValidator v = new WebAppValidator();
//        v.setSpringValidator(springValidators);
//        return v;
//    }
    
    @Bean
    public WebAppValidator postValidator() {
        Set<Validator> springValidators = new HashSet<>();
        springValidators.add(new PostValidator());
        WebAppValidator v = new WebAppValidator();
        v.setSpringValidator(springValidators);
        return v;
    }



    @Bean
    public LocalValidatorFactoryBean validator() {
        LocalValidatorFactoryBean bean
                = new LocalValidatorFactoryBean();
        bean.setValidationMessageSource(messageSource());
        return bean;
    }

    @Bean
    public MessageSource messageSource() {
        ResourceBundleMessageSource source = new ResourceBundleMessageSource();
        source.setBasename("message");
        source.setDefaultEncoding("UTF-8");
        return source;
    }

}
