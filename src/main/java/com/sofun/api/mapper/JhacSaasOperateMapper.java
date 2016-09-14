package com.sofun.api.mapper;

import java.util.List;
import java.util.Map;

import com.sofun.api.common.BaseDao;
import com.sofun.api.pojo.JhacSaasOperate;

public interface JhacSaasOperateMapper extends BaseDao<JhacSaasOperate>
{

    List<JhacSaasOperate> unionQuery(Map<String, Object> map);
}