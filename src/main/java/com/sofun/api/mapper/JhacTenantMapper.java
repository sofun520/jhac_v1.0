package com.sofun.api.mapper;

import java.util.Map;

import com.sofun.api.common.BaseDao;
import com.sofun.api.pojo.JhacTenant;

public interface JhacTenantMapper extends BaseDao<JhacTenant>
{

    void unionQuery(Map<String, Object> map);
}