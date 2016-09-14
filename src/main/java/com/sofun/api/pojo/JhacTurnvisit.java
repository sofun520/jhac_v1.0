package com.sofun.api.pojo;

import java.io.Serializable;

public class JhacTurnvisit implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String turId;

    private Integer turType;

    private String turOutId;

    private Integer turIsVisit;

    private String turAddDate;

    private String turAreaCode;

    private JhacCustomer customer;

    public JhacCustomer getCustomer()
    {
        return customer;
    }

    public void setCustomer(JhacCustomer customer)
    {
        this.customer = customer;
    }

    public String getTurId()
    {
        return turId;
    }

    public void setTurId(String turId)
    {
        this.turId = turId == null ? null : turId.trim();
    }

    public Integer getTurType()
    {
        return turType;
    }

    public void setTurType(Integer turType)
    {
        this.turType = turType;
    }

    public String getTurOutId()
    {
        return turOutId;
    }

    public void setTurOutId(String turOutId)
    {
        this.turOutId = turOutId == null ? null : turOutId.trim();
    }

    public Integer getTurIsVisit()
    {
        return turIsVisit;
    }

    public void setTurIsVisit(Integer turIsVisit)
    {
        this.turIsVisit = turIsVisit;
    }

    public String getTurAddDate()
    {
        return turAddDate;
    }

    public void setTurAddDate(String turAddDate)
    {
        this.turAddDate = turAddDate;
    }

    public String getTurAreaCode()
    {
        return turAreaCode;
    }

    public void setTurAreaCode(String turAreaCode)
    {
        this.turAreaCode = turAreaCode == null ? null : turAreaCode.trim();
    }
}