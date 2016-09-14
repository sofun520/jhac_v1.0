package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.sofun.api.mapper.JhacTurnvisitMapper;
import com.sofun.api.pojo.JhacTurnvisit;
import com.sofun.api.service.JhacTurnvisitService;
import com.sofun.common.utils.DateUtils;
import com.sofun.common.utils.IdGen;

@Service
@Transactional
public class JhacTurnvisitServiceImpl implements JhacTurnvisitService
{

    @Resource
    private JhacTurnvisitMapper dao;

    @Override
    public String save(JhacTurnvisit t)
    {
        if (StringUtils.isEmpty(t.getTurId()))
        {
            t.setTurId(IdGen.uuid());
            t.setTurAddDate(DateUtils.getNow());
            dao.insert(t);
        }
        else
        {
            dao.update(t);
        }
        return t.getTurId();
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacTurnvisit find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacTurnvisit> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

}
