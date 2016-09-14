package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sofun.api.mapper.AllwayOutMapper;
import com.sofun.api.pojo.AllwayOutstorage;
import com.sofun.api.service.AllwayOutService;

@Service
@Transactional
public class AllwayOutServiceImpl implements AllwayOutService
{

    @Resource
    private AllwayOutMapper dao;

    @Override
    public String save(AllwayOutstorage t)
    {
        dao.insert(t);
        return null;
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public AllwayOutstorage find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<AllwayOutstorage> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

}
