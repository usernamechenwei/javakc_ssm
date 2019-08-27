package com.zhg.javakc.modules.car.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.car.dao.CarDao;
import com.zhg.javakc.modules.car.entity.CarTeam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CarService  extends BaseService<CarDao,CarTeam> {

    @Autowired
    private CarDao carDao;

    /**
     * 查询
     * @param entity
     * @param page
     * @return
     */
    public Page<CarTeam> queryAll(CarTeam entity, Page<CarTeam> page){

        entity.setPage(page);
        page.setList( carDao.findList(entity));
        System.out.println("我来了");
        return page;
    }

}
