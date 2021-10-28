/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.repository;

import java.util.Date;
import java.util.List;

/**
 *
 * @author trang
 */
public interface StatsRepository {
    List<Object[]> placeStats();
    List<Object[]> totalRevenue(String kw, Date fromDate, Date toDate);
    List<Object[]> totalbyMonth(String kw, Date fromDate, Date toDate);
}
