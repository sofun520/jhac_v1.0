package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sofun.api.mapper.JhacNaviMapper;
import com.sofun.api.pojo.JhacNavi;
import com.sofun.api.service.JhacNaviService;

@Service
@Transactional
public class JhacNaviServiceImpl implements JhacNaviService
{

    @Resource
    private JhacNaviMapper dao;

    @Override
    public String save(JhacNavi t)
    {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacNavi find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacNavi> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

}
