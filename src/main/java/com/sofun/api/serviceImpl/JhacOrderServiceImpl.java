package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sofun.api.mapper.JhacOrderDetailMapper;
import com.sofun.api.mapper.JhacOrderMapper;
import com.sofun.api.pojo.JhacOrder;
import com.sofun.api.service.JhacOrderService;

@Service
@Transactional
public class JhacOrderServiceImpl implements JhacOrderService
{

    @Resource
    private JhacOrderMapper dao;

    @Override
    public String save(JhacOrder t)
    {
        dao.insert(t);
        return t.getOrId();
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacOrder find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacOrder> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

    @Override
    public void update(JhacOrder order)
    {
        dao.update(order);
    }

    @Override
    public String getCode(Map<String, Object> map)
    {
        return dao.getCode(map);
    }

}
