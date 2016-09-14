package com.sofun.api.pojo;

import java.io.Serializable;
import java.util.Date;

public class JhacUser implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String userId;

    private String userName;

    private String userPassword;

    private String userTelephone;

    private String userTruename;

    private String userRoleId;

    private String userAreaCode;

    private Integer userStatus;

    private String userAddDate;

    private Integer userDataStatus;

    public String getUserId()
    {
        return userId;
    }

    public void setUserId(String userId)
    {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getUserName()
    {
        return userName;
    }

    public void setUserName(String userName)
    {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getUserPassword()
    {
        return userPassword;
    }

    public void setUserPassword(String userPassword)
    {
        this.userPassword = userPassword == null ? null : userPassword.trim();
    }

    public String getUserTelephone()
    {
        return userTelephone;
    }

    public void setUserTelephone(String userTelephone)
    {
        this.userTelephone = userTelephone == null ? null : userTelephone.trim();
    }

    public String getUserTruename()
    {
        return userTruename;
    }

    public void setUserTruename(String userTruename)
    {
        this.userTruename = userTruename == null ? null : userTruename.trim();
    }

    public String getUserRoleId()
    {
        return userRoleId;
    }

    public void setUserRoleId(String userRoleId)
    {
        this.userRoleId = userRoleId == null ? null : userRoleId.trim();
    }

    public String getUserAreaCode()
    {
        return userAreaCode;
    }

    public void setUserAreaCode(String userAreaCode)
    {
        this.userAreaCode = userAreaCode == null ? null : userAreaCode.trim();
    }

    public Integer getUserStatus()
    {
        return userStatus;
    }

    public void setUserStatus(Integer userStatus)
    {
        this.userStatus = userStatus;
    }

    public String getUserAddDate()
    {
        return userAddDate;
    }

    public void setUserAddDate(String userAddDate)
    {
        this.userAddDate = userAddDate;
    }

    public Integer getUserDataStatus()
    {
        return userDataStatus;
    }

    public void setUserDataStatus(Integer userDataStatus)
    {
        this.userDataStatus = userDataStatus;
    }

    @Override
    public String toString()
    {
        return "JhacUser [userId=" + userId + ", userName=" + userName + ", userPassword=" + userPassword
                + ", userTelephone=" + userTelephone + ", userTruename=" + userTruename + ", userRoleId=" + userRoleId
                + ", userAreaCode=" + userAreaCode + ", userStatus=" + userStatus + ", userAddDate=" + userAddDate
                + ", userDataStatus=" + userDataStatus + "]";
    }

}