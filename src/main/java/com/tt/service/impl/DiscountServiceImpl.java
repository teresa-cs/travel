/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.service.impl;

import com.tt.pojos.Discount;
import com.tt.repository.DiscountRepository;
import com.tt.service.DiscountService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author anhtu
 */
@Service
public class DiscountServiceImpl implements DiscountService{
    
    @Autowired
    private DiscountRepository discountRepository;

    @Override
    public boolean addDiscount(Discount discount) {
        return this.discountRepository.addDiscount(discount);
    }

    @Override
    public List<Discount> getDiscounts(String kw, int page) {
        return this.discountRepository.getDiscounts(kw, page);
    }

    @Override
    public long countDiscount() {
        return this.discountRepository.countDiscount();
    }

    @Override
    public Discount getDiscountById(int id) {
        return this.discountRepository.getDiscountById(id);
    }

    @Override
    public boolean deleteDiscount(int id) {
        return this.discountRepository.deleteDiscount(id);
    }

    @Override
    public Discount getDiscountByCode(String code) {
        return this.discountRepository.getDiscountByCode(code);
    }
    
}
