package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.sofun.api.mapper.JhacOutMapper;
import com.sofun.api.mapper.JhacTurnvisitMapper;
import com.sofun.api.pojo.JhacCompany;
import com.sofun.api.pojo.JhacOut;
import com.sofun.api.pojo.JhacTurnvisit;
import com.sofun.api.service.JhacOutService;
import com.sofun.common.utils.DateUtils;
import com.sofun.common.utils.IdGen;

@Service
@Transactional
public class JhacOutServiceImpl implements JhacOutService
{

    @Resource
    private JhacOutMapper dao;

    @Resource
    private JhacTurnvisitMapper visitDao;

    @Transactional(propagation = Propagation.REQUIRED)
    public String save(JhacOut t)
    {
        if (StringUtils.isEmpty(t.getOutId()))
        {
            t.setOutId(IdGen.uuid());
            if (t.getOutAddDate() == null)
            {
                t.setOutAddDate(DateUtils.getNow());
            }

            JhacTurnvisit visit = new JhacTurnvisit();
            visit.setTurAddDate(DateUtils.getNow());
            visit.setTurAreaCode(t.getOutAreaCode());
            visit.setTurId(IdGen.uuid());
            visit.setTurOutId(t.getOutId());
            visit.setTurType(1);
            visitDao.insert(visit);

            dao.insert(t);
        }
        else
        {
            dao.update(t);
        }
        return t.getOutId();
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacOut find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacOut> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

    @Override
    public List<JhacCompany> monthOut(Map<String, Object> map)
    {
        return dao.monthOut(map);
    }

}
