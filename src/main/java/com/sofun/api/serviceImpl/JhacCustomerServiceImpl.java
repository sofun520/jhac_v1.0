package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.sofun.api.mapper.JhacCustomerMapper;
import com.sofun.api.pojo.JhacCustomer;
import com.sofun.api.service.JhacCustomerService;
import com.sofun.common.utils.DateUtils;
import com.sofun.common.utils.IdGen;

@Service
@Transactional
public class JhacCustomerServiceImpl implements JhacCustomerService
{

    @Resource
    private JhacCustomerMapper dao;

    @Override
    public String save(JhacCustomer t)
    {
        if (StringUtils.isEmpty(t.getCusId()))
        {
            t.setCusAddDate(DateUtils.getNow());
            t.setCusId(IdGen.uuid());
            dao.insert(t);
        }
        else
        {
            dao.update(t);
        }
        return t.getCusId();
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacCustomer find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacCustomer> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

}
