package com.zhg.javakc.modules.purchasing.controller;


import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.purchasing.entity.LeadEntity;
import com.zhg.javakc.modules.purchasing.service.LeadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;
import java.util.Date;
import java.util.Enumeration;

@Controller
@RequestMapping("lead")
public class LeadController {

    @Autowired
    private LeadService leadService;

    //查询展示
    @RequestMapping("queryAll")
    public ModelAndView queryAll(LeadEntity leadEntity ,HttpServletRequest request, HttpServletResponse response){

        ModelAndView modelAndView=new ModelAndView("lead/list");

         modelAndView.addObject("page",  leadService.queryAll(leadEntity,new Page<>(request,response)));

        return modelAndView;

    }
    //新增
    @RequestMapping("create")
    public String create(LeadEntity leadEntity){
        //序号
        String count =leadService.count();
        leadEntity.setApply(count);
        //创建日期
        leadEntity.setLeadDate(new Date());
        //主键
        leadEntity.setLeadId(CommonUtil.uuid());
        leadService.save(leadEntity);
        return "redirect:queryAll.do";
    }

    //通过Id查询
    @RequestMapping("delete")
    public String select(String ids, ModelMap modelMap){

     modelMap.put("lead",leadService.get(ids));

        return  "lead/update";
    }

    //修改
    @RequestMapping("update")
    public String update(LeadEntity leadEntity) {

        leadService.update(leadEntity);

        return "redirect:queryAll.do";
    }

    @RequestMapping("deleteAll")
    public String deleteAll(String [] ids){

        leadService.delete(ids);

        return "redirect:queryAll.do";
    }
}
