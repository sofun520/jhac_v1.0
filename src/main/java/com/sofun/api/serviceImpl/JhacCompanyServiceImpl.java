package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.sofun.api.mapper.JhacCompanyMapper;
import com.sofun.api.pojo.JhacCompany;
import com.sofun.api.service.JhacCompanyService;
import com.sofun.common.utils.DateUtils;
import com.sofun.common.utils.IdGen;

@Service
@Transactional
public class JhacCompanyServiceImpl implements JhacCompanyService
{

    @Resource
    private JhacCompanyMapper dao;

    @Override
    public String save(JhacCompany t)
    {
        if (StringUtils.isEmpty(t.getComId()))
        {
            t.setComId(IdGen.uuid());
            t.setComAddDate(DateUtils.getNow());
            dao.insert(t);
        }
        else
        {
            dao.update(t);
        }
        return t.getComId();
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacCompany find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacCompany> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

    @Override
    public List<JhacCompany> queryGroup(Map<String, Object> map)
    {
        return dao.queryGroup(map);
    }

    @Override
    public List<JhacCompany> query4S(Map<String, Object> map)
    {
        return dao.query4S(map);
    }

    @Override
    public List<JhacCompany> mQuery(Map<String, Object> map)
    {
        return dao.mQuery(map);
    }

}
