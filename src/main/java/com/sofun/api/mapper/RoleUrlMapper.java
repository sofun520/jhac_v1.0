package com.sofun.api.mapper;

import java.util.List;
import java.util.Map;

import com.sofun.api.common.BaseDao;
import com.sofun.api.pojo.RoleUrl;

public interface RoleUrlMapper extends BaseDao<RoleUrl>
{

    List<RoleUrl> roleMenuList(Map<String, Object> map);
}