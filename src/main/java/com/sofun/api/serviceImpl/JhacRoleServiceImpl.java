package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sofun.api.mapper.JhacRoleMapper;
import com.sofun.api.pojo.JhacRole;
import com.sofun.api.service.JhacRoleService;

@Service
@Transactional
public class JhacRoleServiceImpl implements JhacRoleService
{

    @Resource
    private JhacRoleMapper dao;

    @Override
    public String save(JhacRole t)
    {
        return null;
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacRole find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacRole> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

}
