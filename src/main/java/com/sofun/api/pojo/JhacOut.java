package com.sofun.api.pojo;

import java.io.Serializable;
import java.util.Date;

public class JhacOut implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String outId;

    private String outSerialno;

    private String outFrameno;

    private String outPcId;

    private Integer outIsCheckCar;

    private Integer outIsTestCar;

    private Integer outIsSign;

    private String outFramenoPic;

    private String outSerialnoPic;

    private String outSignPic;

    private String outPerson;

    private String outAddress;

    private String outBeizhu;

    private String outAuthTelephone;

    private String outAreaCode;

    private String outAddDate;

    private Integer outDataStatus;

    private JhacUser user;

    private JhacCompany company;

    public JhacUser getUser()
    {
        return user;
    }

    public void setUser(JhacUser user)
    {
        this.user = user;
    }

    public JhacCompany getCompany()
    {
        return company;
    }

    public void setCompany(JhacCompany company)
    {
        this.company = company;
    }

    public String getOutId()
    {
        return outId;
    }

    public void setOutId(String outId)
    {
        this.outId = outId == null ? null : outId.trim();
    }

    public String getOutSerialno()
    {
        return outSerialno;
    }

    public void setOutSerialno(String outSerialno)
    {
        this.outSerialno = outSerialno == null ? null : outSerialno.trim();
    }

    public String getOutFrameno()
    {
        return outFrameno;
    }

    public void setOutFrameno(String outFrameno)
    {
        this.outFrameno = outFrameno == null ? null : outFrameno.trim();
    }

    public String getOutPcId()
    {
        return outPcId;
    }

    public void setOutPcId(String outPcId)
    {
        this.outPcId = outPcId == null ? null : outPcId.trim();
    }

    public Integer getOutIsCheckCar()
    {
        return outIsCheckCar;
    }

    public void setOutIsCheckCar(Integer outIsCheckCar)
    {
        this.outIsCheckCar = outIsCheckCar;
    }

    public Integer getOutIsTestCar()
    {
        return outIsTestCar;
    }

    public void setOutIsTestCar(Integer outIsTestCar)
    {
        this.outIsTestCar = outIsTestCar;
    }

    public Integer getOutIsSign()
    {
        return outIsSign;
    }

    public void setOutIsSign(Integer outIsSign)
    {
        this.outIsSign = outIsSign;
    }

    public String getOutFramenoPic()
    {
        return outFramenoPic;
    }

    public void setOutFramenoPic(String outFramenoPic)
    {
        this.outFramenoPic = outFramenoPic == null ? null : outFramenoPic.trim();
    }

    public String getOutSerialnoPic()
    {
        return outSerialnoPic;
    }

    public void setOutSerialnoPic(String outSerialnoPic)
    {
        this.outSerialnoPic = outSerialnoPic == null ? null : outSerialnoPic.trim();
    }

    public String getOutSignPic()
    {
        return outSignPic;
    }

    public void setOutSignPic(String outSignPic)
    {
        this.outSignPic = outSignPic == null ? null : outSignPic.trim();
    }

    public String getOutPerson()
    {
        return outPerson;
    }

    public void setOutPerson(String outPerson)
    {
        this.outPerson = outPerson == null ? null : outPerson.trim();
    }

    public String getOutAddress()
    {
        return outAddress;
    }

    public void setOutAddress(String outAddress)
    {
        this.outAddress = outAddress == null ? null : outAddress.trim();
    }

    public String getOutBeizhu()
    {
        return outBeizhu;
    }

    public void setOutBeizhu(String outBeizhu)
    {
        this.outBeizhu = outBeizhu == null ? null : outBeizhu.trim();
    }

    public String getOutAuthTelephone()
    {
        return outAuthTelephone;
    }

    public void setOutAuthTelephone(String outAuthTelephone)
    {
        this.outAuthTelephone = outAuthTelephone == null ? null : outAuthTelephone.trim();
    }

    public String getOutAreaCode()
    {
        return outAreaCode;
    }

    public void setOutAreaCode(String outAreaCode)
    {
        this.outAreaCode = outAreaCode == null ? null : outAreaCode.trim();
    }

    public String getOutAddDate()
    {
        return outAddDate;
    }

    public void setOutAddDate(String outAddDate)
    {
        this.outAddDate = outAddDate;
    }

    public Integer getOutDataStatus()
    {
        return outDataStatus;
    }

    public void setOutDataStatus(Integer outDataStatus)
    {
        this.outDataStatus = outDataStatus;
    }
}