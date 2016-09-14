package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.sofun.api.mapper.JhacTenantMapper;
import com.sofun.api.pojo.JhacTenant;
import com.sofun.api.service.JhacTenantService;
import com.sofun.common.utils.DateUtils;
import com.sofun.common.utils.IdGen;

@Service
@Transactional
public class JhacTenantServiceImpl implements JhacTenantService
{

    @Resource
    private JhacTenantMapper dao;

    @Override
    public String save(JhacTenant t)
    {
        if (StringUtils.isEmpty(t.getTenantId()))
        {
            t.setTenantId(IdGen.uuid());
            t.setTenantOperateDate(DateUtils.getNow());
            dao.insert(t);
        }
        else
        {
            dao.update(t);
        }
        return t.getTenantId();
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacTenant find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacTenant> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

}
