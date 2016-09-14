package com.sofun.api.pojo;

import java.io.Serializable;
import java.util.Date;

public class JhacOrder implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String orId;

    private String orUserId;

    private String orAddDate;

    private String orAreaCode;

    private Integer orStatus;

    private Integer orDataStatus;

    private double orSum;

    private String orOperateId;

    private String orOperateDate;

    private JhacUser user;

    public String getOrOperateDate()
    {
        return orOperateDate;
    }

    public void setOrOperateDate(String orOperateDate)
    {
        this.orOperateDate = orOperateDate;
    }

    public String getOrOperateId()
    {
        return orOperateId;
    }

    public void setOrOperateId(String orOperateId)
    {
        this.orOperateId = orOperateId;
    }

    public JhacUser getUser()
    {
        return user;
    }

    public void setUser(JhacUser user)
    {
        this.user = user;
    }

    public double getOrSum()
    {
        return orSum;
    }

    public void setOrSum(double orSum)
    {
        this.orSum = orSum;
    }

    public String getOrId()
    {
        return orId;
    }

    public void setOrId(String orId)
    {
        this.orId = orId == null ? null : orId.trim();
    }

    public String getOrUserId()
    {
        return orUserId;
    }

    public void setOrUserId(String orUserId)
    {
        this.orUserId = orUserId == null ? null : orUserId.trim();
    }

    public String getOrAddDate()
    {
        return orAddDate;
    }

    public void setOrAddDate(String orAddDate)
    {
        this.orAddDate = orAddDate;
    }

    public String getOrAreaCode()
    {
        return orAreaCode;
    }

    public void setOrAreaCode(String orAreaCode)
    {
        this.orAreaCode = orAreaCode == null ? null : orAreaCode.trim();
    }

    public Integer getOrStatus()
    {
        return orStatus;
    }

    public void setOrStatus(Integer orStatus)
    {
        this.orStatus = orStatus;
    }

    public Integer getOrDataStatus()
    {
        return orDataStatus;
    }

    public void setOrDataStatus(Integer orDataStatus)
    {
        this.orDataStatus = orDataStatus;
    }

    @Override
    public String toString()
    {
        return "JhacOrder [orId=" + orId + ", orUserId=" + orUserId + ", orAddDate=" + orAddDate + ", orAreaCode="
                + orAreaCode + ", orStatus=" + orStatus + ", orDataStatus=" + orDataStatus + ", orSum=" + orSum
                + ", user=" + user + "]";
    }

}