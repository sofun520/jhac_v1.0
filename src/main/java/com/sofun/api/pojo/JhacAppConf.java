package com.sofun.api.pojo;

import java.io.Serializable;
import java.util.Date;

public class JhacAppConf implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String confId;

    private String confKey;

    private String confValue;

    private String confDate;

    private Integer confStatus;

    public String getConfId()
    {
        return confId;
    }

    public void setConfId(String confId)
    {
        this.confId = confId == null ? null : confId.trim();
    }

    public String getConfKey()
    {
        return confKey;
    }

    public void setConfKey(String confKey)
    {
        this.confKey = confKey == null ? null : confKey.trim();
    }

    public String getConfValue()
    {
        return confValue;
    }

    public void setConfValue(String confValue)
    {
        this.confValue = confValue == null ? null : confValue.trim();
    }

    public String getConfDate()
    {
        return confDate;
    }

    public void setConfDate(String confDate)
    {
        this.confDate = confDate;
    }

    public Integer getConfStatus()
    {
        return confStatus;
    }

    public void setConfStatus(Integer confStatus)
    {
        this.confStatus = confStatus;
    }
}