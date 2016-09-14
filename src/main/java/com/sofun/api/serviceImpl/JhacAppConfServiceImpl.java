package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.sofun.api.mapper.JhacAppConfMapper;
import com.sofun.api.pojo.JhacAppConf;
import com.sofun.api.service.JhacAppConfService;
import com.sofun.common.utils.DateUtils;
import com.sofun.common.utils.IdGen;

@Service
@Transactional
public class JhacAppConfServiceImpl implements JhacAppConfService
{

    @Resource
    private JhacAppConfMapper dao;

    @Override
    public String save(JhacAppConf t)
    {
        if (StringUtils.isEmpty(t.getConfId()))
        {
            t.setConfDate(DateUtils.getNow());
            t.setConfId(IdGen.uuid());
            dao.insert(t);
        }
        else
        {
            dao.update(t);
        }
        return t.getConfId();
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacAppConf find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacAppConf> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

}
