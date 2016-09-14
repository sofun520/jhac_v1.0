package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.sofun.api.mapper.RoleUrlMapper;
import com.sofun.api.pojo.RoleUrl;
import com.sofun.api.service.RoleUrlService;
import com.sofun.common.utils.IdGen;

@Service
public class RoleUrlServiceImpl implements RoleUrlService
{

    @Resource
    private RoleUrlMapper dao;

    @Override
    public String save(RoleUrl t)
    {
        if (StringUtils.isEmpty(t.getRuId()))
        {
            t.setRuId(IdGen.uuid());
            dao.insert(t);
        }
        else
        {
            dao.update(t);
        }
        return t.getRuId();
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public RoleUrl find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<RoleUrl> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

    @Override
    public List<RoleUrl> roleMenuList(Map<String, Object> map)
    {
        return dao.roleMenuList(map);
    }

}
