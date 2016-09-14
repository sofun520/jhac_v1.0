/**
 * @(#)JhacVinServiceImpl.java 1.0 2016年4月1日
 * @Copyright: Copyright 2010 - 2016 ISoftstone Co. Ltd. All Rights Reserved.
 * @Modification History:
 * @version: HYOM 1.0
 * @Date: 2016年4月1日
 * @Description: (Initialize)
 * @Reviewer:
 * @Review Date:
 */
package com.sofun.api.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sofun.api.mapper.JhacVinMapper;
import com.sofun.api.pojo.JhacVin;
import com.sofun.api.service.JhacVinService;

/**
 * Description
 * 
 * @author qianglic 73817
 */

@Service
@Transactional
public class JhacVinServiceImpl implements JhacVinService
{

    @Resource
    private JhacVinMapper dao;

    @Override
    public String save(JhacVin t)
    {
        return null;

    }

    @Override
    public void delete(String id)
    {
        dao.delete(id);
    }

    @Override
    public JhacVin find(String id)
    {
        return dao.find(id);
    }

    @Override
    public List<JhacVin> query(Map<String, Object> map)
    {
        return dao.query(map);
    }

    @Override
    public int total(Map<String, Object> map)
    {
        return dao.total(map);
    }

}
