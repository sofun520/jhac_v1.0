package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.sofun.api.mapper.JhacCarMapper;
import com.sofun.api.pojo.JhacCar;
import com.sofun.api.service.JhacCarService;
import com.sofun.common.utils.DateUtils;
import com.sofun.common.utils.IdGen;

@Service
@Transactional
public class JhacCarServiceImpl implements JhacCarService
{

    @Resource
    private JhacCarMapper dao;

    @Override
    public String save(JhacCar t)
    {
        if (StringUtils.isEmpty(t.getCarId()))
        {
            t.setCarId(IdGen.uuid());
            t.setCarAddDate(DateUtils.getNow());
            dao.insert(t);
        }
        else
        {
            dao.update(t);
        }
        return t.getCarId();
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacCar find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacCar> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

}
