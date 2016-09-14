package com.sofun.api.pojo;

import java.io.Serializable;

public class UserRole implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String urId;

    private String urUserId;

    private String urRoleId;

    public String getUrId()
    {
        return urId;
    }

    public void setUrId(String urId)
    {
        this.urId = urId == null ? null : urId.trim();
    }

    public String getUrUserId()
    {
        return urUserId;
    }

    public void setUrUserId(String urUserId)
    {
        this.urUserId = urUserId == null ? null : urUserId.trim();
    }

    public String getUrRoleId()
    {
        return urRoleId;
    }

    public void setUrRoleId(String urRoleId)
    {
        this.urRoleId = urRoleId == null ? null : urRoleId.trim();
    }
}