package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.sofun.api.mapper.JhacSaasOperateMapper;
import com.sofun.api.mapper.JhacSaasOrderMapper;
import com.sofun.api.mapper.JhacTenantMapper;
import com.sofun.api.pojo.JhacSaasOperate;
import com.sofun.api.pojo.JhacSaasOrder;
import com.sofun.api.pojo.JhacTenant;
import com.sofun.api.service.JhacSaasOperateService;
import com.sofun.common.utils.DateUtils;
import com.sofun.common.utils.IdGen;

@Service
@Transactional
public class JhacSaasOperateServiceImpl implements JhacSaasOperateService
{

    @Resource
    private JhacSaasOperateMapper dao;

    @Resource
    private JhacSaasOrderMapper orderDao;

    @Resource
    private JhacTenantMapper tenantDao;

    @Override
    public String save(JhacSaasOperate t)
    {
        if (StringUtils.isEmpty(t.getOperateId()))
        {
            t.setOperateId(IdGen.uuid());
            dao.insert(t);
        }
        else
        {
            dao.update(t);
        }
        return t.getOperateId();
    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacSaasOperate find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacSaasOperate> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

    @Override
    public List<JhacSaasOperate> unionQuery(Map<String, Object> map)
    {
        return dao.unionQuery(map);
    }

    @Override
    public boolean saasCreate(JhacSaasOrder order, JhacTenant tenant, JhacSaasOperate operate)
    {
        try
        {
            String tenantId = IdGen.uuid();
            tenant.setTenantId(tenantId);
            tenantDao.insert(tenant);

            String orderId = "SC" + DateUtils.getOrderId();
            order.setJhacOrderId(orderId);
            orderDao.insert(order);

            operate.setOperateTenantId(tenantId);
            operate.setOperateId(IdGen.uuid());
            operate.setOperateOrderId(orderId);
            dao.insert(operate);

            return true;

        }
        catch (Exception ex)
        {
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public void renew(JhacSaasOrder order, JhacTenant tenant, JhacSaasOperate operate)
    {

        tenantDao.update(tenant);
        orderDao.insert(order);
        dao.insert(operate);
    }
}
