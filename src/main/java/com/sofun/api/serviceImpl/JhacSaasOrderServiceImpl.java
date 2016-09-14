package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.sofun.api.mapper.JhacSaasOrderMapper;
import com.sofun.api.pojo.JhacSaasOrder;
import com.sofun.api.service.JhacSaasOrderService;
import com.sofun.common.utils.DateUtils;
import com.sofun.common.utils.IdGen;

@Service
@Transactional
public class JhacSaasOrderServiceImpl implements JhacSaasOrderService
{

    @Resource
    private JhacSaasOrderMapper dao;

    @Override
    public String save(JhacSaasOrder t)
    {
        if (StringUtils.isEmpty(t.getJhacOrderId()))
        {
            t.setJhacOrderId(IdGen.uuid());
            t.setJhacOrderDate(DateUtils.getNow());
            dao.insert(t);
        }
        else
        {
            dao.update(t);
        }
        return t.getJhacOrderId();
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacSaasOrder find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacSaasOrder> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

}
