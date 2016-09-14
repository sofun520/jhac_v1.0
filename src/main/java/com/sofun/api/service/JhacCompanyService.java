package com.sofun.api.service;

import java.util.List;
import java.util.Map;

import com.sofun.api.common.BaseService;
import com.sofun.api.pojo.JhacCompany;

public interface JhacCompanyService extends BaseService<JhacCompany>
{

    List<JhacCompany> queryGroup(Map<String, Object> map);

    List<JhacCompany> query4S(Map<String, Object> map);

    List<JhacCompany> mQuery(Map<String, Object> map);

}
