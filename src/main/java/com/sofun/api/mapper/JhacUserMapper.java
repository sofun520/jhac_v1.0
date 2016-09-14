package com.sofun.api.mapper;

import java.util.Map;

import com.sofun.api.common.BaseDao;
import com.sofun.api.pojo.JhacUser;

public interface JhacUserMapper extends BaseDao<JhacUser>
{

    JhacUser checkLogin(Map<String, Object> map);

    void frozen(Map<String, Object> map);
}