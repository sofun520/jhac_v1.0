package com.sofun.api.pojo;

import java.io.Serializable;

public class RoleUrl implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String ruId;

    private String ruRoleId;

    private String ruUrlId;

    private JhacUrl urls;

    public JhacUrl getUrls()
    {
        return urls;
    }

    public void setUrls(JhacUrl urls)
    {
        this.urls = urls;
    }

    public String getRuId()
    {
        return ruId;
    }

    public void setRuId(String ruId)
    {
        this.ruId = ruId == null ? null : ruId.trim();
    }

    public String getRuRoleId()
    {
        return ruRoleId;
    }

    public void setRuRoleId(String ruRoleId)
    {
        this.ruRoleId = ruRoleId == null ? null : ruRoleId.trim();
    }

    public String getRuUrlId()
    {
        return ruUrlId;
    }

    public void setRuUrlId(String ruUrlId)
    {
        this.ruUrlId = ruUrlId == null ? null : ruUrlId.trim();
    }
}