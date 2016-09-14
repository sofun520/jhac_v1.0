package com.sofun.api.pojo;

import java.io.Serializable;
import java.util.Date;

public class JhacBaoxian implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String baoId;

    private String baoIds;

    private String baoShouyiren;

    private String baoOutId;

    private String baoAreaCode;

    private Integer baoIsPrint;

    private String baoAddDate;

    private Integer baoDataStatus;

    private String baoStartDate;

    public String getBaoId()
    {
        return baoId;
    }

    public void setBaoId(String baoId)
    {
        this.baoId = baoId == null ? null : baoId.trim();
    }

    public String getBaoIds()
    {
        return baoIds;
    }

    public void setBaoIds(String baoIds)
    {
        this.baoIds = baoIds == null ? null : baoIds.trim();
    }

    public String getBaoShouyiren()
    {
        return baoShouyiren;
    }

    public void setBaoShouyiren(String baoShouyiren)
    {
        this.baoShouyiren = baoShouyiren == null ? null : baoShouyiren.trim();
    }

    public String getBaoOutId()
    {
        return baoOutId;
    }

    public void setBaoOutId(String baoOutId)
    {
        this.baoOutId = baoOutId == null ? null : baoOutId.trim();
    }

    public String getBaoAreaCode()
    {
        return baoAreaCode;
    }

    public void setBaoAreaCode(String baoAreaCode)
    {
        this.baoAreaCode = baoAreaCode == null ? null : baoAreaCode.trim();
    }

    public Integer getBaoIsPrint()
    {
        return baoIsPrint;
    }

    public void setBaoIsPrint(Integer baoIsPrint)
    {
        this.baoIsPrint = baoIsPrint;
    }

    public String getBaoAddDate()
    {
        return baoAddDate;
    }

    public void setBaoAddDate(String baoAddDate)
    {
        this.baoAddDate = baoAddDate;
    }

    public Integer getBaoDataStatus()
    {
        return baoDataStatus;
    }

    public void setBaoDataStatus(Integer baoDataStatus)
    {
        this.baoDataStatus = baoDataStatus;
    }

    public String getBaoStartDate()
    {
        return baoStartDate;
    }

    public void setBaoStartDate(String baoStartDate)
    {
        this.baoStartDate = baoStartDate == null ? null : baoStartDate.trim();
    }
}