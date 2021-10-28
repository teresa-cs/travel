/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import com.tt.pojos.Discount;
import com.tt.pojos.Hotel;
import com.tt.pojos.Tour;
import com.tt.service.DiscountService;
import com.tt.service.HotelService;
import com.tt.service.StatsService;
import com.tt.service.TourService;
import com.tt.validator.DiscountValidator;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author anhtu
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private DiscountService discountService;

    @Autowired
    private TourService tourService;

    @Autowired
    private HotelService hotelService;
    @Autowired
    private StatsService statsService;

//    @Autowired
//    private DiscountValidator discountValidator;
//    
//    @InitBinder
//    public void initBinder(WebDataBinder binder){
//        binder.setValidator(discountValidator);
//    }
    @GetMapping("/discount")
    public String discount(Model model, @RequestParam(required = false) Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("discounts", this.discountService.getDiscounts(params.get("kw"), page));
        model.addAttribute("counter", this.discountService.countDiscount());
        model.addAttribute("discount", new Discount());
        model.addAttribute("a", this.discountService.getDiscountByCode("HTEL4F"));
        return "discount";
    }

    @PostMapping("/discount")
    public String discount(@ModelAttribute(value = "discount") @Valid Discount discount,
            BindingResult result) {
        if (!result.hasErrors()) {
            if (this.discountService.addDiscount(discount) == true) {
                return "redirect:/";
            }
        }
        return "discount";
    }
    ////////////////////////////////////TOUR///////////////////////////////////////////////////////

    @GetMapping("/tabletour")
    public String tableTour(Model model, @RequestParam(required = false) Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        String id = params.getOrDefault("id", null);
        model.addAttribute("tour", this.tourService.getTours(params.get("kw"), page));
        model.addAttribute("counter", this.tourService.countTour());
        Tour t = new Tour();
        model.addAttribute("tour-update", t);
        if (id != null) {
            model.addAttribute("t", this.tourService.getTourbyId(Integer.parseInt(id)));
        }
        return "tabletour";
    }

    @PostMapping("/tabletour")
    public String tableTour(Model model, @RequestParam(required = false) Map<String, String> params,
            @ModelAttribute(value = "tour-update") @Valid Tour tour, BindingResult result) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("tour", this.tourService.getTours(params.get("kw"), page));
        model.addAttribute("counter", this.tourService.countTour());
//            if (!result.hasErrors()) {
        if (this.tourService.updateTour(this.tourService.getTourbyId(tour.getId()), tour) == true) {
            return "redirect:/admin/tabletour";
        } else {
            model.addAttribute("errMsg", "Something wrong!");
//                }
        }

        return "tabletour";
    }

    @GetMapping("/tabletour-delete")
    public String tableTourDelete(Model model, @RequestParam(required = false) Map<String, String> params) {

        String id = params.getOrDefault("id", null);
        boolean t;
        if (id != null) {
            t = this.tourService.deleteTour(Integer.parseInt(id));
            if (t == true) {
                return "redirect:/admin/tabletour";
            }
        }
        return "tabletour";
    }
    
        @GetMapping("/addtour")
    public String addtour(Model model) {
        model.addAttribute("tour", new Tour());
        return "addtour";
    }

    @PostMapping("/addtour")
    public String addtour(Model model, @ModelAttribute(value = "tour") @Valid Tour tour,
     BindingResult result
    ) {
        if (!result.hasErrors()) {

        if (this.tourService.addOrUpdate(tour) == true) {
            return "redirect:/";
        } else {
            model.addAttribute("errMsg", "Something wrong!");
        }
        }

        return "addtour";
    }

    ///////////////////////////////////HOTEL//////////////////////////////////////
    @GetMapping("/addhotel")
    public String addhotel(Model model) {
        model.addAttribute("hotel", new Hotel());
        return "addhotel";
    }

    @PostMapping("/addhotel")
    public String addhotel(Model model, @ModelAttribute(value = "hotel") @Valid Hotel hotel,
            BindingResult result) {
        if (!result.hasErrors()) {

            if (this.hotelService.addOrUpdate(hotel) == true) {
                return "redirect:/";
            } else {
                model.addAttribute("errMsg", "Something wrong!");
            }
        }

        return "addhotel";
    }
    
    ////////////////////////////Statistic//////////////////////
     @GetMapping("/stats-place")
    public String statsPlace(Model model) {
        model.addAttribute("statsplace", this.statsService.placeStats());
        model.addAttribute("size", this.statsService.placeStats().size());
        return "stats-place";
    }

    @GetMapping("/total-revenue")
    public String total(Model model, @RequestParam(required = false) Map<String, String> params) throws ParseException {
        String kw = params.getOrDefault("kw", null);
        SimpleDateFormat d = new SimpleDateFormat("yyyy-MM-dd");

        Date fromDate = null;
        Date toDate = null;
        try{
            String f = params.getOrDefault("fromDate", null);
        if (f != null) {
            fromDate = d.parse(f);
        }

        String to = params.getOrDefault("toDate", null);
        if (to != null) {
            toDate = d.parse(to);
        }
        }catch(ParseException ex){
            ex.printStackTrace();
        } model.addAttribute("totalrevenue", this.statsService.totalRevenue(kw, fromDate, toDate));
        return "total-revenue";

    }
    
    @GetMapping("/total-month")
    public String totalmonth(Model model, @RequestParam(required = false) Map<String, String> params) {
        String kw = params.getOrDefault("kw", null);
        SimpleDateFormat d = new SimpleDateFormat("yyyy-MM-dd");

        Date fromDate = null;
        Date toDate = null;
        try{
            String f = params.getOrDefault("fromDate", null);
        if (f != null) {
            fromDate = d.parse(f);
        }

        String to = params.getOrDefault("toDate", null);
        if (to != null) {
            toDate = d.parse(to);
        }
        }catch(ParseException ex){
            ex.printStackTrace();
        }
        model.addAttribute("totalbyMonth", this.statsService.totalbyMonth(kw, fromDate, toDate));
        return "total-month";

    }
}
