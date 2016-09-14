package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.sofun.api.mapper.UserRoleMapper;
import com.sofun.api.pojo.UserRole;
import com.sofun.api.service.UserRoleService;
import com.sofun.common.utils.IdGen;

@Service
public class UserRoleServiceImpl implements UserRoleService
{

    @Resource
    private UserRoleMapper dao;

    @Override
    public String save(UserRole t)
    {
        if (StringUtils.isEmpty(t.getUrId()))
        {
            t.setUrId(IdGen.uuid());
            dao.insert(t);
        }
        else
        {
            dao.update(t);
        }
        return t.getUrId();
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public UserRole find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<UserRole> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

}
