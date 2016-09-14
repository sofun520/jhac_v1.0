package com.sofun.api.pojo;

import java.io.Serializable;
import java.util.Date;

public class JhacProductClass implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String pcId;

    private String pcName;

    private String pcXinghao;

    private Integer pcDataStatus;

    private String pcAddDate;

    private double pcPrice;

    public double getPcPrice()
    {
        return pcPrice;
    }

    public void setPcPrice(double pcPrice)
    {
        this.pcPrice = pcPrice;
    }

    public String getPcId()
    {
        return pcId;
    }

    public void setPcId(String pcId)
    {
        this.pcId = pcId == null ? null : pcId.trim();
    }

    public String getPcName()
    {
        return pcName;
    }

    public void setPcName(String pcName)
    {
        this.pcName = pcName == null ? null : pcName.trim();
    }

    public String getPcXinghao()
    {
        return pcXinghao;
    }

    public void setPcXinghao(String pcXinghao)
    {
        this.pcXinghao = pcXinghao == null ? null : pcXinghao.trim();
    }

    public Integer getPcDataStatus()
    {
        return pcDataStatus;
    }

    public void setPcDataStatus(Integer pcDataStatus)
    {
        this.pcDataStatus = pcDataStatus;
    }

    public String getPcAddDate()
    {
        return pcAddDate;
    }

    public void setPcAddDate(String pcAddDate)
    {
        this.pcAddDate = pcAddDate;
    }
}