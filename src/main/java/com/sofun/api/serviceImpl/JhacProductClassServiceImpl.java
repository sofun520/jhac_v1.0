package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.sofun.api.mapper.JhacProductClassMapper;
import com.sofun.api.pojo.JhacProductClass;
import com.sofun.api.service.JhacProductClassService;
import com.sofun.common.utils.DateUtils;
import com.sofun.common.utils.IdGen;

@Service
@Transactional
public class JhacProductClassServiceImpl implements JhacProductClassService
{

    @Resource
    private JhacProductClassMapper dao;

    @Override
    public String save(JhacProductClass t)
    {
        if (StringUtils.isEmpty(t.getPcId()))
        {
            t.setPcId(IdGen.uuid());
            t.setPcAddDate(DateUtils.getNow());
            dao.insert(t);
        }
        else
        {
            dao.update(t);
        }
        return t.getPcId();
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacProductClass find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacProductClass> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

}
