/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.tt.pojos.Place;
import com.tt.pojos.Tour;
import com.tt.pojos.TourDetail;
import com.tt.service.TourService;
import com.tt.validator.WebAppValidator;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author trang
 */
@Controller
@ControllerAdvice
public class TourController {

    @Autowired
    private TourService tourService;
    @Autowired
    private WebAppValidator tourValidator;

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.setValidator(tourValidator);
    }

    @GetMapping("/tour")
    public String tour(Model model, @RequestParam(required = false) Map<String, String> params) {
//        String kw= params.getOrDefault("kw", null);
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("tour", this.tourService.getTours(params.get("kw"), page));
        model.addAttribute("counter", this.tourService.countTour());
        model.addAttribute("detail", "helo");

        return "tour";
    }

    @RequestMapping("/tour/tour-{tourId}")
    public String tour_place(Model model, @PathVariable(value = "tourId") int tourId) {
        Tour t = this.tourService.getTourbyId(tourId);
        Place c = this.tourService.getPlacebyId(tourId);
        model.addAttribute("tour", t);
        model.addAttribute("counter", this.tourService.countDetail(tourId));
        model.addAttribute("tourdetail", this.tourService.getTourDetail(tourId));
        return "tour-place";
    }

    @GetMapping("/addtour")
    public String addtour(Model model) {
        model.addAttribute("tour", new Tour());
        return "addtour";
    }

    @PostMapping("/addtour")
    public String addtour(Model model,@ModelAttribute(value = "tour") @Valid Tour tour,
            BindingResult result) {
        if (!result.hasErrors()) {
           
            if (this.tourService.addOrUpdate(tour) == true) {
                return "redirect:/";
            }else{
                model.addAttribute("errMsg", "Something wrong!");
            }
        }

        return "addtour";
    }

}
