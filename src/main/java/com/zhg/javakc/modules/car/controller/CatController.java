package com.zhg.javakc.modules.car.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.car.entity.CarTeam;
import com.zhg.javakc.modules.car.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 车队管理
 */
@Controller
@RequestMapping("car")
public class CatController {

    @Autowired
    private CarService carService;

    //查询数据444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444
    @RequestMapping("queryAll")
    public String queryAll(CarTeam carTeam, ModelMap model, HttpServletRequest request, HttpServletResponse response){
        model.put("page", carService.queryAll(carTeam,new Page<CarTeam>(request, response)));
        model.put("entity", carTeam);

        return "car/list";

    }
}
