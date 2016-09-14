package com.sofun.api.service;

import java.util.List;
import java.util.Map;

import com.sofun.api.common.BaseService;
import com.sofun.api.pojo.JhacCompany;
import com.sofun.api.pojo.JhacOut;

public interface JhacOutService extends BaseService<JhacOut>
{

    List<JhacCompany> monthOut(Map<String, Object> map);

}
