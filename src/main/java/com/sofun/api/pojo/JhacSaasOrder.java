package com.sofun.api.pojo;

import java.io.Serializable;

public class JhacSaasOrder implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String jhacOrderId;

    private String jhacOrderPayUserId;

    private String jhacOrderCheckoutUserId;

    private Float jhacOrderMoney;

    private String jhacOrderTimeType;

    private Integer jhacOrderTimeNum;

    private String jhacOrderDate;

    public String getJhacOrderId()
    {
        return jhacOrderId;
    }

    public void setJhacOrderId(String jhacOrderId)
    {
        this.jhacOrderId = jhacOrderId == null ? null : jhacOrderId.trim();
    }

    public String getJhacOrderPayUserId()
    {
        return jhacOrderPayUserId;
    }

    public void setJhacOrderPayUserId(String jhacOrderPayUserId)
    {
        this.jhacOrderPayUserId = jhacOrderPayUserId == null ? null : jhacOrderPayUserId.trim();
    }

    public String getJhacOrderCheckoutUserId()
    {
        return jhacOrderCheckoutUserId;
    }

    public void setJhacOrderCheckoutUserId(String jhacOrderCheckoutUserId)
    {
        this.jhacOrderCheckoutUserId = jhacOrderCheckoutUserId == null ? null : jhacOrderCheckoutUserId.trim();
    }

    public Float getJhacOrderMoney()
    {
        return jhacOrderMoney;
    }

    public void setJhacOrderMoney(Float jhacOrderMoney)
    {
        this.jhacOrderMoney = jhacOrderMoney;
    }

    public String getJhacOrderTimeType()
    {
        return jhacOrderTimeType;
    }

    public void setJhacOrderTimeType(String jhacOrderTimeType)
    {
        this.jhacOrderTimeType = jhacOrderTimeType == null ? null : jhacOrderTimeType.trim();
    }

    public Integer getJhacOrderTimeNum()
    {
        return jhacOrderTimeNum;
    }

    public void setJhacOrderTimeNum(Integer jhacOrderTimeNum)
    {
        this.jhacOrderTimeNum = jhacOrderTimeNum;
    }

    public String getJhacOrderDate()
    {
        return jhacOrderDate;
    }

    public void setJhacOrderDate(String jhacOrderDate)
    {
        this.jhacOrderDate = jhacOrderDate;
    }
}