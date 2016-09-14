package com.sofun.api.service;

import java.util.List;
import java.util.Map;

import com.sofun.api.common.BaseService;
import com.sofun.api.pojo.JhacArea;

public interface JhacAreaService extends BaseService<JhacArea>
{

    List<JhacArea> search(Map<String, Object> map);

    List<JhacArea> queryNotCreate(Map<String, Object> map);

}
