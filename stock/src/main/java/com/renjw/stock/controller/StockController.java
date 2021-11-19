package com.renjw.stock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author Renjw
 * @Description TODO
 * @Date 2021/11/11 16:32
 */
@RestController()
@RequestMapping("/stock")
public class StockController {


    @RequestMapping("add")
    public String add(){
        System.out.println("下单成功，库存减1");
        return "下单成功，库存减1";
    }
}
