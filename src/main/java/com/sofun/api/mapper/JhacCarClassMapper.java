package com.sofun.api.mapper;

import java.util.List;
import java.util.Map;

import com.sofun.api.common.BaseDao;
import com.sofun.api.pojo.JhacCarClass;
import com.sofun.api.pojo.JhacCompany;

public interface JhacCarClassMapper extends BaseDao<JhacCarClass>
{

    List<JhacCompany> allCarclassz(Map<String, Object> map);
}