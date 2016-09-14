package com.sofun.api.pojo;

import java.io.Serializable;
import java.util.Date;

public class JhacCar implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String carId;

    private String carClassId;

    private String carChangpai;

    private String carXinghao;

    private String carDengjidate;

    private String carLicence;

    private String carEngineno;

    private String carColor;

    private String carGear;

    private String carOutId;

    private String carAddDate;

    private Integer carDataStatus;

    public String getCarId()
    {
        return carId;
    }

    public void setCarId(String carId)
    {
        this.carId = carId;
    }

    public String getCarClassId()
    {
        return carClassId;
    }

    public void setCarClassId(String carClassId)
    {
        this.carClassId = carClassId == null ? null : carClassId.trim();
    }

    public String getCarChangpai()
    {
        return carChangpai;
    }

    public void setCarChangpai(String carChangpai)
    {
        this.carChangpai = carChangpai == null ? null : carChangpai.trim();
    }

    public String getCarXinghao()
    {
        return carXinghao;
    }

    public void setCarXinghao(String carXinghao)
    {
        this.carXinghao = carXinghao == null ? null : carXinghao.trim();
    }

    public String getCarDengjidate()
    {
        return carDengjidate;
    }

    public void setCarDengjidate(String carDengjidate)
    {
        this.carDengjidate = carDengjidate == null ? null : carDengjidate.trim();
    }

    public String getCarLicence()
    {
        return carLicence;
    }

    public void setCarLicence(String carLicence)
    {
        this.carLicence = carLicence == null ? null : carLicence.trim();
    }

    public String getCarEngineno()
    {
        return carEngineno;
    }

    public void setCarEngineno(String carEngineno)
    {
        this.carEngineno = carEngineno == null ? null : carEngineno.trim();
    }

    public String getCarColor()
    {
        return carColor;
    }

    public void setCarColor(String carColor)
    {
        this.carColor = carColor == null ? null : carColor.trim();
    }

    public String getCarGear()
    {
        return carGear;
    }

    public void setCarGear(String carGear)
    {
        this.carGear = carGear == null ? null : carGear.trim();
    }

    public String getCarOutId()
    {
        return carOutId;
    }

    public void setCarOutId(String carOutId)
    {
        this.carOutId = carOutId == null ? null : carOutId.trim();
    }

    public String getCarAddDate()
    {
        return carAddDate;
    }

    public void setCarAddDate(String carAddDate)
    {
        this.carAddDate = carAddDate;
    }

    public Integer getCarDataStatus()
    {
        return carDataStatus;
    }

    public void setCarDataStatus(Integer carDataStatus)
    {
        this.carDataStatus = carDataStatus;
    }
}