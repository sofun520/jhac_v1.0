package com.sofun.api.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.sofun.api.mapper.JhacUserMapper;
import com.sofun.api.pojo.JhacUser;
import com.sofun.api.service.JhacUserService;
import com.sofun.common.utils.DateUtils;
import com.sofun.common.utils.IdGen;

@Service
@Transactional
public class JhacUserServiceImpl implements JhacUserService
{

    @Resource
    private JhacUserMapper dao;

    @Override
    public String save(JhacUser t)
    {
        if (StringUtils.isEmpty(t.getUserId()))
        {
            t.setUserAddDate(DateUtils.getNow());
            t.setUserId(IdGen.uuid());
            dao.insert(t);
        }
        else
        {
            dao.update(t);
        }
        return t.getUserId();
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacUser find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacUser> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public JhacUser checkLogin(Map<String, Object> map)
    {
        return dao.checkLogin(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

    @Override
    public void frozen(String areaCode)
    {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("userAreaCode", areaCode);
        dao.frozen(map);
    }
}
