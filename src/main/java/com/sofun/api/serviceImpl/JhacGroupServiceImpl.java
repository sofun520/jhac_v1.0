package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sofun.api.mapper.JhacGroupMapper;
import com.sofun.api.pojo.JhacGroup;
import com.sofun.api.service.JhacGroupService;

@Service
public class JhacGroupServiceImpl implements JhacGroupService
{

    @Resource
    private JhacGroupMapper dao;

    @Override
    public String save(JhacGroup t)
    {
        return null;
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacGroup find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacGroup> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

}
