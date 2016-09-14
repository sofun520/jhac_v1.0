package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.sofun.api.mapper.JhacUrlMapper;
import com.sofun.api.pojo.JhacUrl;
import com.sofun.api.service.JhacUrlService;
import com.sofun.common.utils.DateUtils;
import com.sofun.common.utils.IdGen;

@Service
@Transactional
public class JhacUrlServiceImpl implements JhacUrlService
{

    @Resource
    private JhacUrlMapper dao;

    @Override
    public String save(JhacUrl t)
    {
        if (StringUtils.isEmpty(t.getUrlId()))
        {
            t.setUrlDate(DateUtils.getNow());
            t.setUrlId(IdGen.uuid());
            dao.insert(t);
        }
        else
        {
            dao.update(t);
        }
        return t.getUrlId();
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacUrl find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacUrl> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

    @Override
    public List<JhacUrl> queryMenu(Map<String, Object> map)
    {
        return dao.queryMenu(map);
    }

}
