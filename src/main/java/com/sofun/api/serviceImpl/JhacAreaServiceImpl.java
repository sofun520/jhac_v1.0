package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.sofun.api.mapper.JhacAreaMapper;
import com.sofun.api.pojo.JhacArea;
import com.sofun.api.service.JhacAreaService;
import com.sofun.common.utils.DateUtils;
import com.sofun.common.utils.IdGen;

@Service
@Transactional
public class JhacAreaServiceImpl implements JhacAreaService
{

    @Resource
    private JhacAreaMapper dao;

    @Override
    public String save(JhacArea t)
    {
        if (StringUtils.isEmpty(t.getAreaId()))
        {
            t.setAreaAddDate(DateUtils.getNow());
            t.setAreaId(IdGen.uuid());
            dao.insert(t);
        }
        else
        {
            dao.update(t);
        }
        return t.getAreaId();
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacArea find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacArea> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

    @Override
    public List<JhacArea> search(Map<String, Object> map)
    {
        return dao.search(map);
    }

    @Override
    public List<JhacArea> queryNotCreate(Map<String, Object> map)
    {
        return dao.queryNotCreate(map);
    }

}
