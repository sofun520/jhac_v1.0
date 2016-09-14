package com.sofun.api.mapper;

import java.util.List;
import java.util.Map;

import com.sofun.api.common.BaseDao;
import com.sofun.api.pojo.JhacArea;

public interface JhacAreaMapper extends BaseDao<JhacArea>
{

    List<JhacArea> search(Map<String, Object> map);

    List<JhacArea> queryNotCreate(Map<String, Object> map);
}