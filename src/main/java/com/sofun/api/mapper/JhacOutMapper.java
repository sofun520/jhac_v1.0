package com.sofun.api.mapper;

import java.util.List;
import java.util.Map;

import com.sofun.api.common.BaseDao;
import com.sofun.api.pojo.JhacCompany;
import com.sofun.api.pojo.JhacOut;

public interface JhacOutMapper extends BaseDao<JhacOut>
{

    List<JhacCompany> monthOut(Map<String, Object> map);
}