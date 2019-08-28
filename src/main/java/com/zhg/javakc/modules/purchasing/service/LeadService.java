package com.zhg.javakc.modules.purchasing.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.purchasing.dao.LeadDao;
import com.zhg.javakc.modules.purchasing.entity.LeadEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LeadService extends BaseService<LeadDao, LeadEntity> {

    @Autowired
     private  LeadDao leadDao;

    public Page<LeadEntity> queryAll(LeadEntity leadEntity , Page<LeadEntity> page){

            leadEntity.setPage(page);

        page.setList(leadDao.findList(leadEntity));

        return page;
    }



}
