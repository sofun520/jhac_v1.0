package com.sofun.api.service;

import java.util.List;
import java.util.Map;

import com.sofun.api.common.BaseService;
import com.sofun.api.pojo.RoleUrl;

public interface RoleUrlService extends BaseService<RoleUrl>
{

    List<RoleUrl> roleMenuList(Map<String, Object> map);

}
