package com.sofun.api.pojo;

import java.io.Serializable;

public class JhacRoleNavi implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private Integer id;

    private Integer roleId;

    private Integer naviId;

    private Integer clazz;

    public Integer getId()
    {
        return id;
    }

    public void setId(Integer id)
    {
        this.id = id;
    }

    public Integer getRoleId()
    {
        return roleId;
    }

    public void setRoleId(Integer roleId)
    {
        this.roleId = roleId;
    }

    public Integer getNaviId()
    {
        return naviId;
    }

    public void setNaviId(Integer naviId)
    {
        this.naviId = naviId;
    }

    public Integer getClazz()
    {
        return clazz;
    }

    public void setClazz(Integer clazz)
    {
        this.clazz = clazz;
    }
}