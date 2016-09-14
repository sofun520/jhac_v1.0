package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sofun.api.mapper.JhacRoleNaviMapper;
import com.sofun.api.pojo.JhacRoleNavi;
import com.sofun.api.service.JhacRoleNaviService;

@Service
@Transactional
public class JhacRoleNaviServiceImpl implements JhacRoleNaviService
{

    @Resource
    private JhacRoleNaviMapper dao;

    @Override
    public String save(JhacRoleNavi t)
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
    public JhacRoleNavi find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacRoleNavi> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

}
