package com.sofun.api.pojo;

import java.io.Serializable;

public class JhacBackservice implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String bacId;

    private String bacOutId;

    private String bacProblem;

    private String bacProblemPic;

    private String bacAddDate;

    private String bacUserId;

    private String bacAreaCode;

    public String getBacId()
    {
        return bacId;
    }

    public void setBacId(String bacId)
    {
        this.bacId = bacId == null ? null : bacId.trim();
    }

    public String getBacOutId()
    {
        return bacOutId;
    }

    public void setBacOutId(String bacOutId)
    {
        this.bacOutId = bacOutId == null ? null : bacOutId.trim();
    }

    public String getBacProblem()
    {
        return bacProblem;
    }

    public void setBacProblem(String bacProblem)
    {
        this.bacProblem = bacProblem == null ? null : bacProblem.trim();
    }

    public String getBacProblemPic()
    {
        return bacProblemPic;
    }

    public void setBacProblemPic(String bacProblemPic)
    {
        this.bacProblemPic = bacProblemPic == null ? null : bacProblemPic.trim();
    }

    public String getBacAddDate()
    {
        return bacAddDate;
    }

    public void setBacAddDate(String bacAddDate)
    {
        this.bacAddDate = bacAddDate;
    }

    public String getBacUserId()
    {
        return bacUserId;
    }

    public void setBacUserId(String bacUserId)
    {
        this.bacUserId = bacUserId;
    }

    public String getBacAreaCode()
    {
        return bacAreaCode;
    }

    public void setBacAreaCode(String bacAreaCode)
    {
        this.bacAreaCode = bacAreaCode == null ? null : bacAreaCode.trim();
    }
}