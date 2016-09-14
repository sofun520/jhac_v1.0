package com.sofun.api.mapper;

import java.util.List;
import java.util.Map;

import com.sofun.api.common.BaseDao;
import com.sofun.api.pojo.JhacUrl;

public interface JhacUrlMapper extends BaseDao<JhacUrl>
{

    List<JhacUrl> queryMenu(Map<String, Object> map);

}