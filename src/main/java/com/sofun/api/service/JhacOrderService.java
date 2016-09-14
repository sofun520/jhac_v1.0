package com.sofun.api.service;

import java.util.Map;

import com.sofun.api.common.BaseService;
import com.sofun.api.pojo.JhacOrder;

public interface JhacOrderService extends BaseService<JhacOrder>
{

    void update(JhacOrder order);

    String getCode(Map<String, Object> map);

}
