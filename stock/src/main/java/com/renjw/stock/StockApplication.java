package com.renjw.stock;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * 启动程序
 * 
 * @author goram
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
public class StockApplication
{
    public static void main(String[] args)
    {
        SpringApplication.run(StockApplication.class, args);
        System.out.println("-------------- 库存服务-启动成功 --------------");
    }
}
