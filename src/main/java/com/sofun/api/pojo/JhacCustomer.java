package com.sofun.api.pojo;

import java.io.Serializable;
import java.util.Date;

public class JhacCustomer implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String cusId;

    private String cusName;

    private String cusIdentify;

    private String cusTelephone;

    private String cusAddress;

    private String cusIdPic;

    private String cusOutId;

    private String cusAddDate;

    private Integer cusDataStatus;

    public String getCusId()
    {
        return cusId;
    }

    public void setCusId(String cusId)
    {
        this.cusId = cusId == null ? null : cusId.trim();
    }

    public String getCusName()
    {
        return cusName;
    }

    public void setCusName(String cusName)
    {
        this.cusName = cusName == null ? null : cusName.trim();
    }

    public String getCusIdentify()
    {
        return cusIdentify;
    }

    public void setCusIdentify(String cusIdentify)
    {
        this.cusIdentify = cusIdentify == null ? null : cusIdentify.trim();
    }

    public String getCusTelephone()
    {
        return cusTelephone;
    }

    public void setCusTelephone(String cusTelephone)
    {
        this.cusTelephone = cusTelephone == null ? null : cusTelephone.trim();
    }

    public String getCusAddress()
    {
        return cusAddress;
    }

    public void setCusAddress(String cusAddress)
    {
        this.cusAddress = cusAddress == null ? null : cusAddress.trim();
    }

    public String getCusIdPic()
    {
        return cusIdPic;
    }

    public void setCusIdPic(String cusIdPic)
    {
        this.cusIdPic = cusIdPic == null ? null : cusIdPic.trim();
    }

    public String getCusOutId()
    {
        return cusOutId;
    }

    public void setCusOutId(String cusOutId)
    {
        this.cusOutId = cusOutId == null ? null : cusOutId.trim();
    }

    public String getCusAddDate()
    {
        return cusAddDate;
    }

    public void setCusAddDate(String cusAddDate)
    {
        this.cusAddDate = cusAddDate;
    }

    public Integer getCusDataStatus()
    {
        return cusDataStatus;
    }

    public void setCusDataStatus(Integer cusDataStatus)
    {
        this.cusDataStatus = cusDataStatus;
    }
}