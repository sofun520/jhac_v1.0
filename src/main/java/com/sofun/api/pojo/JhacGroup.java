package com.sofun.api.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class JhacGroup implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String gId;

    private String gName;

    private Date gAddDate;

    private Integer gDateStatus;

    private List<JhacCompany> coms;

    public List<JhacCompany> getComs()
    {
        return coms;
    }

    public void setComs(List<JhacCompany> coms)
    {
        this.coms = coms;
    }

    public String getgId()
    {
        return gId;
    }

    public void setgId(String gId)
    {
        this.gId = gId == null ? null : gId.trim();
    }

    public String getgName()
    {
        return gName;
    }

    public void setgName(String gName)
    {
        this.gName = gName == null ? null : gName.trim();
    }

    public Date getgAddDate()
    {
        return gAddDate;
    }

    public void setgAddDate(Date gAddDate)
    {
        this.gAddDate = gAddDate;
    }

    public Integer getgDateStatus()
    {
        return gDateStatus;
    }

    public void setgDateStatus(Integer gDateStatus)
    {
        this.gDateStatus = gDateStatus;
    }
}