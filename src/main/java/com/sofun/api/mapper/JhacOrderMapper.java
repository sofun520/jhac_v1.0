package com.sofun.api.mapper;

import java.util.Map;

import com.sofun.api.common.BaseDao;
import com.sofun.api.pojo.JhacOrder;

public interface JhacOrderMapper extends BaseDao<JhacOrder>
{

    String getCode(Map<String, Object> map);
}