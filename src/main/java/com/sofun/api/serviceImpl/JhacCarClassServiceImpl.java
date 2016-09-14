package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.sofun.api.mapper.JhacCarClassMapper;
import com.sofun.api.pojo.JhacCarClass;
import com.sofun.api.pojo.JhacCompany;
import com.sofun.api.service.JhacCarClassService;
import com.sofun.common.utils.DateUtils;
import com.sofun.common.utils.IdGen;

@Service
@Transactional
public class JhacCarClassServiceImpl implements JhacCarClassService
{

    @Resource
    private JhacCarClassMapper dao;

    @Override
    public String save(JhacCarClass t)
    {
        if (StringUtils.isEmpty(t.getCcId()))
        {
            t.setCcAddDate(DateUtils.getNow());
            t.setCcId(IdGen.uuid());
            dao.insert(t);
        }
        else
        {
            dao.update(t);
        }
        return t.getCcId();
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacCarClass find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacCarClass> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

    @Override
    public List<JhacCompany> allCarclassz(Map<String, Object> map)
    {
        return dao.allCarclassz(map);
    }
}
