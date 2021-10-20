/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository;

import com.tt.pojos.Discount;
import java.util.List;

/**
 *
 * @author anhtu
 */
public interface DiscountRepository {
    boolean addDiscount(Discount discount);
    List<Discount> getDiscounts(String kw, int page);
    long countDiscount();
    Discount getDiscountById(int id);
    boolean deleteDiscount(int id);
    Discount getDiscountByCode(String code);
}
