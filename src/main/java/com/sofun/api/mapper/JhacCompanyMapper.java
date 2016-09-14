package com.sofun.api.mapper;

import java.util.List;
import java.util.Map;

import com.sofun.api.common.BaseDao;
import com.sofun.api.pojo.JhacCompany;

public interface JhacCompanyMapper extends BaseDao<JhacCompany>
{

    List<JhacCompany> queryGroup(Map<String, Object> map);

    List<JhacCompany> query4S(Map<String, Object> map);

    List<JhacCompany> mQuery(Map<String, Object> map);
}