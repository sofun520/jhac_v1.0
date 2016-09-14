package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.sofun.api.mapper.JhacBackserviceMapper;
import com.sofun.api.mapper.JhacTurnvisitMapper;
import com.sofun.api.pojo.JhacBackservice;
import com.sofun.api.pojo.JhacTurnvisit;
import com.sofun.api.service.JhacBackserviceService;
import com.sofun.common.utils.DateUtils;
import com.sofun.common.utils.IdGen;

@Service
@Transactional
public class JhacBackserviceServiceImpl implements JhacBackserviceService
{

    @Resource
    private JhacBackserviceMapper dao;

    @Resource
    private JhacTurnvisitMapper visitDao;

    @Transactional(propagation = Propagation.REQUIRED)
    public String save(JhacBackservice t)
    {
        if (StringUtils.isEmpty(t.getBacId()))
        {
            t.setBacId(IdGen.uuid());
            t.setBacAddDate(DateUtils.getNow());

            JhacTurnvisit visit = new JhacTurnvisit();
            visit.setTurAddDate(DateUtils.getNow());
            visit.setTurAreaCode(t.getBacAreaCode());
            visit.setTurId(IdGen.uuid());
            visit.setTurOutId(t.getBacOutId());
            visit.setTurType(2);
            visitDao.insert(visit);

            dao.insert(t);
        }
        else
        {
            dao.update(t);
        }
        return t.getBacId();
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacBackservice find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacBackservice> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

}
