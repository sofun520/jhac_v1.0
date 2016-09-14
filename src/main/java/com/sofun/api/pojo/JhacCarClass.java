package com.sofun.api.pojo;

import java.io.Serializable;
import java.util.Date;

public class JhacCarClass implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String ccId;

    private String ccName;

    private String ccCompanyId;

    private String ccAreaCode;

    private String ccAddDate;

    private Integer ccDataStatus;

    public String getCcId()
    {
        return ccId;
    }

    public void setCcId(String ccId)
    {
        this.ccId = ccId == null ? null : ccId.trim();
    }

    public String getCcName()
    {
        return ccName;
    }

    public void setCcName(String ccName)
    {
        this.ccName = ccName == null ? null : ccName.trim();
    }

    public String getCcCompanyId()
    {
        return ccCompanyId;
    }

    public void setCcCompanyId(String ccCompanyId)
    {
        this.ccCompanyId = ccCompanyId == null ? null : ccCompanyId.trim();
    }

    public String getCcAreaCode()
    {
        return ccAreaCode;
    }

    public void setCcAreaCode(String ccAreaCode)
    {
        this.ccAreaCode = ccAreaCode == null ? null : ccAreaCode.trim();
    }

    public String getCcAddDate()
    {
        return ccAddDate;
    }

    public void setCcAddDate(String ccAddDate)
    {
        this.ccAddDate = ccAddDate;
    }

    public Integer getCcDataStatus()
    {
        return ccDataStatus;
    }

    public void setCcDataStatus(Integer ccDataStatus)
    {
        this.ccDataStatus = ccDataStatus;
    }
}