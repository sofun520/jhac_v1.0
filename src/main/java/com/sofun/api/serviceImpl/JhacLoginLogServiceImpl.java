package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.sofun.api.mapper.JhacLoginLogMapper;
import com.sofun.api.pojo.JhacLoginLog;
import com.sofun.api.service.JhacLoginLogService;
import com.sofun.common.utils.IdGen;

@Service
@Transactional
public class JhacLoginLogServiceImpl implements JhacLoginLogService
{

    @Resource
    private JhacLoginLogMapper dao;

    @Override
    public String save(JhacLoginLog t)
    {
        if (StringUtils.isEmpty(t.getLogId()))
        {
            t.setLogId(IdGen.uuid());
            dao.insert(t);
        }
        else
        {
            dao.update(t);
        }
        return t.getLogId();
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacLoginLog find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacLoginLog> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

}
