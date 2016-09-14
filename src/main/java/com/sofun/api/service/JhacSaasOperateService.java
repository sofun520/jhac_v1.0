package com.sofun.api.service;

import java.util.List;
import java.util.Map;

import com.sofun.api.common.BaseService;
import com.sofun.api.pojo.JhacSaasOperate;
import com.sofun.api.pojo.JhacSaasOrder;
import com.sofun.api.pojo.JhacTenant;

public interface JhacSaasOperateService extends BaseService<JhacSaasOperate>
{

    List<JhacSaasOperate> unionQuery(Map<String, Object> map);

    boolean saasCreate(JhacSaasOrder order, JhacTenant tenant, JhacSaasOperate operate);

    void renew(JhacSaasOrder order, JhacTenant tenant, JhacSaasOperate operate);

}
