package com.sofun.api.pojo;

import java.io.Serializable;

public class JhacOrderDetail implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String ordId;

    private String ordIds;

    private String ordName;

    private Integer ordNum;

    private Integer ordDataStatus;

    private String ordXinghao;

    private double ordPrice;

    private String ordAddDate;

    public String getOrdAddDate()
    {
        return ordAddDate;
    }

    public void setOrdAddDate(String ordAddDate)
    {
        this.ordAddDate = ordAddDate;
    }

    public String getOrdXinghao()
    {
        return ordXinghao;
    }

    public void setOrdXinghao(String ordXinghao)
    {
        this.ordXinghao = ordXinghao;
    }

    public double getOrdPrice()
    {
        return ordPrice;
    }

    public void setOrdPrice(double ordPrice)
    {
        this.ordPrice = ordPrice;
    }

    public String getOrdId()
    {
        return ordId;
    }

    public void setOrdId(String ordId)
    {
        this.ordId = ordId == null ? null : ordId.trim();
    }

    public String getOrdIds()
    {
        return ordIds;
    }

    public void setOrdIds(String ordIds)
    {
        this.ordIds = ordIds == null ? null : ordIds.trim();
    }

    public String getOrdName()
    {
        return ordName;
    }

    public void setOrdName(String ordName)
    {
        this.ordName = ordName == null ? null : ordName.trim();
    }

    public Integer getOrdNum()
    {
        return ordNum;
    }

    public void setOrdNum(Integer ordNum)
    {
        this.ordNum = ordNum;
    }

    public Integer getOrdDataStatus()
    {
        return ordDataStatus;
    }

    public void setOrdDataStatus(Integer ordDataStatus)
    {
        this.ordDataStatus = ordDataStatus;
    }
}