package com.zhg.javakc.modules.car.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.car.dao.CarDao;
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
public class CatController{

    @Autowired
    private CarService carService;

    //查询数据
    @RequestMapping("queryAll")
    public String queryAll(CarTeam carTeam, ModelMap model, HttpServletRequest request, HttpServletResponse response){
        model.put("page", carService.queryAll(carTeam,new Page<CarTeam>(request, response)));
        model.put("entity", carTeam);

        return "car/list";

    }

    @RequestMapping("create")
    public String create(CarTeam carTeam){
        carTeam.setTeam_id(CommonUtil.uuid());

        carService.save(carTeam);

        return  "redirect:queryAll.do";
    }

    //查询id
    @RequestMapping("load")
    public String update(String ids, ModelMap modelMap){

        CarTeam car=carService.get(ids);
        modelMap.put("car",car);
        System.out.println("来了");
        return "car/update";
    }

    @RequestMapping("update_1")
    public String update_1(CarTeam carTeam){
        carService.update(carTeam);
      return "redirect:queryAll.do";
    }

    @RequestMapping("delete")
    public String delete(String ids[]){

        carService.delete(ids);
        return "redirect:queryAll.do";
    }

}
