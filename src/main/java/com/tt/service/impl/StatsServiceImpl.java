/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tt.service.impl;

import com.tt.repository.StatsRepository;
import com.tt.service.StatsService;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author trang
 */
@Service
public class StatsServiceImpl implements StatsService{
    @Autowired
    private StatsRepository statsRepository;

    @Override
    public List<Object[]> placeStats() {
        return this.statsRepository.placeStats();

    }

    @Override
    public List<Object[]> totalRevenue(String kw, Date fromDate, Date toDate) {
        return this.statsRepository.totalRevenue(kw, fromDate,toDate);
    }

    @Override
    public List<Object[]> totalbyMonth(String kw, Date fromDate, Date toDate) {
         return this.statsRepository.totalbyMonth(kw, fromDate,toDate);

    }

    
}
