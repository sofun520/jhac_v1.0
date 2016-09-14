package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.sofun.api.mapper.JhacOrderDetailMapper;
import com.sofun.api.pojo.JhacOrderDetail;
import com.sofun.api.service.JhacOrderDetailService;
import com.sofun.common.utils.DateUtils;
import com.sofun.common.utils.IdGen;

@Service
@Transactional
public class JhacOrderDetailServiceImpl implements JhacOrderDetailService
{

    @Resource
    private JhacOrderDetailMapper dao;

    @Override
    public String save(JhacOrderDetail t)
    {
        if (StringUtils.isEmpty(t.getOrdId()))
        {
            t.setOrdId(IdGen.uuid());
            t.setOrdAddDate(DateUtils.getNow());
            dao.insert(t);
        }
        else
        {
            dao.update(t);
        }
        return t.getOrdId();
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacOrderDetail find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacOrderDetail> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

}
