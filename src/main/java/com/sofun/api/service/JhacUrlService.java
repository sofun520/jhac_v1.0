package com.sofun.api.service;

import java.util.List;
import java.util.Map;

import com.sofun.api.common.BaseService;
import com.sofun.api.pojo.JhacUrl;

public interface JhacUrlService extends BaseService<JhacUrl>
{

    List<JhacUrl> queryMenu(Map<String, Object> map);

}
