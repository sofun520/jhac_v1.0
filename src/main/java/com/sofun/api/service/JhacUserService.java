package com.sofun.api.service;

import java.util.Map;

import com.sofun.api.common.BaseService;
import com.sofun.api.pojo.JhacUser;

public interface JhacUserService extends BaseService<JhacUser>
{

    JhacUser checkLogin(Map<String, Object> map);

    void frozen(String areaCode);

}
