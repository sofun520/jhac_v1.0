package com.sofun.api.pojo;

import java.io.Serializable;
import java.util.Date;

public class JhacLoginLog implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String logId;

    private String logUsername;

    private Date logInDate;

    private Date logOutDate;

    public String getLogId()
    {
        return logId;
    }

    public void setLogId(String logId)
    {
        this.logId = logId == null ? null : logId.trim();
    }

    public String getLogUsername()
    {
        return logUsername;
    }

    public void setLogUsername(String logUsername)
    {
        this.logUsername = logUsername == null ? null : logUsername.trim();
    }

    public Date getLogInDate()
    {
        return logInDate;
    }

    public void setLogInDate(Date logInDate)
    {
        this.logInDate = logInDate;
    }

    public Date getLogOutDate()
    {
        return logOutDate;
    }

    public void setLogOutDate(Date logOutDate)
    {
        this.logOutDate = logOutDate;
    }
}