package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sofun.api.mapper.JhacFileMapper;
import com.sofun.api.pojo.JhacFile;
import com.sofun.api.service.JhacFileService;

@Service
@Transactional
public class JhacFileServiceImpl implements JhacFileService
{

    @Resource
    private JhacFileMapper dao;

    @Override
    public String save(JhacFile t)
    {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacFile find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacFile> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

}
