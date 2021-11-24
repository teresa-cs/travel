/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.controllers;

import com.tt.pojos.Discount;
import com.tt.pojos.Hotel;
import com.tt.pojos.Post;
import com.tt.pojos.Room;
import com.tt.pojos.Tour;
import com.tt.pojos.TourDetail;
import com.tt.pojos.User;
import com.tt.service.DiscountService;
import com.tt.service.HotelService;
import com.tt.service.OrderService;
import com.tt.service.OrderTourService;
import com.tt.service.PlaceService;
import com.tt.service.PostService;
import com.tt.service.RoleService;
import com.tt.service.RoomService;
import com.tt.service.StatsService;
import com.tt.service.TourDetailService;
import com.tt.service.TourService;
import com.tt.service.UserService;
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
import org.springframework.web.bind.annotation.PathVariable;
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
    @Autowired
    private PlaceService placeService;
    @Autowired
    private TourDetailService tourDetailService;
    @Autowired
    private RoomService roomService;
    @Autowired
    private PostService postService;
    @Autowired
    private OrderTourService orderTourService;
    @Autowired
    private OrderService orderHotelService;
    @Autowired
    private RoleService roleService;
    @Autowired
    private UserService userService;

    ////////////////////////////////////Account///////////////////////////////////////////////////////
    @GetMapping("/account")
    public String account(Model model, @RequestParam(required = false) Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("users", this.userService.getUserOfManage(params.get("kw"), page));
        model.addAttribute("account", new User());
        return "account";
    }

    @PostMapping("/account")
    public String account(Model model, @ModelAttribute(value = "account") @Valid User user, BindingResult result) {
        if (!result.hasErrors()) {
            if (this.userService.addManage(user) == true) {
                return "redirect:/admin/account";
            }
        }
        return "account";
    }

    ////////////////////////////////////Discount///////////////////////////////////////////////////////
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

    @ModelAttribute
    public void commonAttr(Model model) {
        model.addAttribute("places", this.placeService.getPlaces());
        model.addAttribute("roles", this.roleService.getRoles());
    }

    @GetMapping("/tabletour")
    public String tableTour(Model model, @RequestParam(required = false) Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        String id = params.getOrDefault("id", null);
        model.addAttribute("tour", this.tourService.getTours(params.get("kw"), page));
        model.addAttribute("counter", this.tourService.countTour());
        model.addAttribute("t", new Tour());
        return "tabletour";
    }

    @PostMapping("/tabletour")
    public String tableTour(Model model, @ModelAttribute(value = "t") @Valid Tour tour,
            BindingResult result, @RequestParam(required = false) Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        String id = params.getOrDefault("id", null);
        model.addAttribute("tour", this.tourService.getTours(params.get("kw"), page));
        model.addAttribute("counter", this.tourService.countTour());
        if (!result.hasErrors()) {

            if (this.tourService.addOrUpdate(tour) == true) {
                model.addAttribute("success", "Add Tour Success");
                return "redirect:/admin/tabletour";
            } else {
                model.addAttribute("errMsg", "Something wrong!");
            }
        }
        return "tabletour";
    }

    @GetMapping("/tabletour/tour-{tourId}")
    public String tableTourDetails(Model model, @PathVariable("tourId") int tourId) {
        model.addAttribute("tour", this.tourService.getTourbyId(tourId));
        model.addAttribute("detail", new TourDetail());

        return "tabletourdetails";
    }

    @PostMapping("/tabletour/tour-{tourId}")
    public String tableTourDetails(Model model, @PathVariable("tourId") int tourId,
            @ModelAttribute(value = "detail") @Valid TourDetail tourDetail) {

        tourDetail.setIdtour(this.tourService.getTourbyId(tourId));
        if (this.tourDetailService.addTourDetail(tourDetail) == true) {
            return "redirect:/admin/tabletour/tour-" + String.valueOf(tourId);
        }
        return "tabletour-details";
    }

    ///////////////////////////////////HOTEL//////////////////////////////////////
    @GetMapping("/tablehotel")
    public String tableHotel(Model model, @RequestParam(required = false) Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        String id = params.getOrDefault("id", null);
        model.addAttribute("hotel", this.hotelService.getHotels(params.get("kw"), page));
        model.addAttribute("counter", this.hotelService.countHotel());
        model.addAttribute("h", new Hotel());
        return "tablehotel";
    }

    @PostMapping("tablehotel")
    public String tableHotel(Model model, @ModelAttribute(value = "h") @Valid Hotel hotel,
            BindingResult result, @RequestParam(required = false) Map<String, String> params) {
        if (!result.hasErrors()) {
            if (this.hotelService.addOrUpdate(hotel) == true) {
                model.addAttribute("success", "Add Hotel Success");
                return "redirect:/admin/tablehotel";
            } else {
                model.addAttribute("errMsg", "Something wrong!");
            }
        }
        return "tablehotel";
    }

    @GetMapping("/tablehotel/hotel-{hotelId}")
    public String RoomHotel(Model model, @PathVariable("hotelId") int hotelId) {
        model.addAttribute("hotel", this.hotelService.getHotelbyId(hotelId));
        model.addAttribute("room", new Room());
        return "room";
    }

    @PostMapping("/tablehotel/hotel-{hotelId}")
    public String RoomHotel(Model model, @PathVariable("hotelId") int hotelId,
            @ModelAttribute(value = "room") @Valid Room room) {

        room.setIdhotel(this.hotelService.getHotelbyId(hotelId));
        if (this.roomService.addRoom(room) == true) {
            return "redirect:/admin/tablehotel/hotel-" + String.valueOf(hotelId);
        }

        return "room";
    }

    ////////////////////////////Post//////////////////////
    @GetMapping("/tablepost")
    public String tablePost(Model model, @RequestParam(required = false) Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        String id = params.getOrDefault("id", null);
        model.addAttribute("posts", this.postService.getListPost(params.get("kw"), page));
        model.addAttribute("counter", this.postService.countPost());
        model.addAttribute("p", new Post());
        return "tablepost";
    }
    
    @PostMapping("/tablepost")
    public String tablePost(Model model, @ModelAttribute(value = "p") @Valid Post post,
            BindingResult result){
        if (!result.hasErrors()) {
            if (this.postService.addPost(post) == true) {
                model.addAttribute("success", "Add Post Success");
                return "redirect:/admin/tablepost";
            } else {
                model.addAttribute("errMsg", "Something wrong!");
            }
        }
        return "tablepost";
    }

    ////////////////////////////OrderTour//////////////////////
    @GetMapping("/tableordertour")
    public String tableOrderTour(Model model, @RequestParam(required = false) Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        String id = params.getOrDefault("id", null);
        model.addAttribute("ordertour", this.orderTourService.getListOrderTour(params.get("kw"), page));
        return "tableordertour";
    }

    ////////////////////////////OrderHotel//////////////////////
    @GetMapping("/tableorderhotel")
    public String tableOrderHotel(Model model, @RequestParam(required = false) Map<String, String> params) {
        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        String id = params.getOrDefault("id", null);
        model.addAttribute("orderhotel", this.orderHotelService.getOrderHotelByPage(params.get("kw"), page));
        return "tableorderhotel";
    }

    ////////////////////////////Receipt////////////////////////
    @GetMapping("/tablereceipt")
    public String tableReceipt(Model model, @RequestParam(required = false) Map<String, String> params) {

        return "tablereceipt";
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
        try {
            String f = params.getOrDefault("fromDate", null);
            if (f != null) {
                fromDate = d.parse(f);
            }

            String to = params.getOrDefault("toDate", null);
            if (to != null) {
                toDate = d.parse(to);
            }
        } catch (ParseException ex) {
            ex.printStackTrace();
        }
        model.addAttribute("totalrevenue", this.statsService.totalRevenue(kw, fromDate, toDate));
        return "total-revenue";

    }

    @GetMapping("/total-month")
    public String totalmonth(Model model, @RequestParam(required = false) Map<String, String> params) {
        String kw = params.getOrDefault("kw", null);
        SimpleDateFormat d = new SimpleDateFormat("yyyy-MM-dd");

        Date fromDate = null;
        Date toDate = null;
        try {
            String f = params.getOrDefault("fromDate", null);
            if (f != null) {
                fromDate = d.parse(f);
            }

            String to = params.getOrDefault("toDate", null);
            if (to != null) {
                toDate = d.parse(to);
            }
        } catch (ParseException ex) {
            ex.printStackTrace();
        }
        model.addAttribute("totalbyMonth", this.statsService.totalbyMonth(kw, fromDate, toDate));
        return "total-month";

    }
}
