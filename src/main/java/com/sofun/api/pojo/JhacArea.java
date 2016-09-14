package com.sofun.api.pojo;

import java.io.Serializable;
import java.util.Date;

public class JhacArea implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String areaId;

    private String areaName;

    private String areaEn;

    private String areaAddDate;

    private Integer areaDataStatus;

    public String getAreaId()
    {
        return areaId;
    }

    public void setAreaId(String areaId)
    {
        this.areaId = areaId == null ? null : areaId.trim();
    }

    public String getAreaName()
    {
        return areaName;
    }

    public void setAreaName(String areaName)
    {
        this.areaName = areaName == null ? null : areaName.trim();
    }

    public String getAreaEn()
    {
        return areaEn;
    }

    public void setAreaEn(String areaEn)
    {
        this.areaEn = areaEn == null ? null : areaEn.trim();
    }

    public String getAreaAddDate()
    {
        return areaAddDate;
    }

    public void setAreaAddDate(String areaAddDate)
    {
        this.areaAddDate = areaAddDate;
    }

    public Integer getAreaDataStatus()
    {
        return areaDataStatus;
    }

    public void setAreaDataStatus(Integer areaDataStatus)
    {
        this.areaDataStatus = areaDataStatus;
    }
}