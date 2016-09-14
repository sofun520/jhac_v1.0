package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.sofun.api.mapper.JhacBaoxianMapper;
import com.sofun.api.pojo.JhacBaoxian;
import com.sofun.api.service.JhacBaoxianService;
import com.sofun.common.utils.DateUtils;
import com.sofun.common.utils.IdGen;

@Service
@Transactional
public class JhacBaoxianServiceImpl implements JhacBaoxianService
{

    @Resource
    private JhacBaoxianMapper dao;

    @Override
    public String save(JhacBaoxian t)
    {
        if (StringUtils.isEmpty(t.getBaoId()))
        {
            t.setBaoId(IdGen.uuid());
            t.setBaoAddDate(DateUtils.getNow());
            dao.insert(t);
        }
        else
        {
            dao.update(t);
        }
        return t.getBaoId();
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacBaoxian find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacBaoxian> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

}
