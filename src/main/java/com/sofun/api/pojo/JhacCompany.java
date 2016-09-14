package com.sofun.api.pojo;

import java.io.Serializable;
import java.util.List;

public class JhacCompany implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String comId;

    private String comName;

    private String comParentId;

    private String comAreaCode;

    private String comAddDate;

    private Integer comDataStatus;

    private List<JhacCarClass> carclassz;

    private List<JhacOut> outs;

    public List<JhacOut> getOuts()
    {

        return outs;
    }

    public void setOuts(List<JhacOut> outs)
    {

        this.outs = outs;
    }

    public List<JhacCarClass> getCarclassz()
    {
        return carclassz;
    }

    public void setCarclassz(List<JhacCarClass> carclassz)
    {
        this.carclassz = carclassz;
    }

    public String getComId()
    {
        return comId;
    }

    public void setComId(String comId)
    {
        this.comId = comId == null ? null : comId.trim();
    }

    public String getComName()
    {
        return comName;
    }

    public void setComName(String comName)
    {
        this.comName = comName == null ? null : comName.trim();
    }

    public String getComParentId()
    {
        return comParentId;
    }

    public void setComParentId(String comParentId)
    {
        this.comParentId = comParentId == null ? null : comParentId.trim();
    }

    public String getComAreaCode()
    {
        return comAreaCode;
    }

    public void setComAreaCode(String comAreaCode)
    {
        this.comAreaCode = comAreaCode == null ? null : comAreaCode.trim();
    }

    public String getComAddDate()
    {
        return comAddDate;
    }

    public void setComAddDate(String comAddDate)
    {
        this.comAddDate = comAddDate;
    }

    public Integer getComDataStatus()
    {
        return comDataStatus;
    }

    public void setComDataStatus(Integer comDataStatus)
    {
        this.comDataStatus = comDataStatus;
    }

    @Override
    public String toString()
    {
        return "JhacCompany [comId=" + comId + ", comName=" + comName + ", comParentId=" + comParentId
                + ", comAreaCode=" + comAreaCode + ", comAddDate=" + comAddDate + ", comDataStatus=" + comDataStatus
                + "]";
    }

}