package com.sofun.api.service;

import java.util.List;
import java.util.Map;

import com.sofun.api.common.BaseService;
import com.sofun.api.pojo.JhacCarClass;
import com.sofun.api.pojo.JhacCompany;

public interface JhacCarClassService extends BaseService<JhacCarClass>
{

    List<JhacCompany> allCarclassz(Map<String, Object> map);

}
