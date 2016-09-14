package com.sofun.api.pojo;

import java.io.Serializable;

public class JhacTenant implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String tenantId;

    private String tenantOperateUser;

    private String tenantAreaCode;

    private String tenantBeginDate;

    private String tenantExpireDate;

    private Integer tenantStatus;

    private String tenantOperateDate;

    private JhacUser user;

    public JhacUser getUser()
    {
        return user;
    }

    public void setUser(JhacUser user)
    {
        this.user = user;
    }

    public String getTenantId()
    {
        return tenantId;
    }

    public void setTenantId(String tenantId)
    {
        this.tenantId = tenantId == null ? null : tenantId.trim();
    }

    public String getTenantOperateUser()
    {
        return tenantOperateUser;
    }

    public void setTenantOperateUser(String tenantOperateUser)
    {
        this.tenantOperateUser = tenantOperateUser == null ? null : tenantOperateUser.trim();
    }

    public String getTenantAreaCode()
    {
        return tenantAreaCode;
    }

    public void setTenantAreaCode(String tenantAreaCode)
    {
        this.tenantAreaCode = tenantAreaCode == null ? null : tenantAreaCode.trim();
    }

    public String getTenantBeginDate()
    {
        return tenantBeginDate;
    }

    public void setTenantBeginDate(String tenantBeginDate)
    {
        this.tenantBeginDate = tenantBeginDate;
    }

    public String getTenantExpireDate()
    {
        return tenantExpireDate;
    }

    public void setTenantExpireDate(String tenantExpireDate)
    {
        this.tenantExpireDate = tenantExpireDate;
    }

    public Integer getTenantStatus()
    {
        return tenantStatus;
    }

    public void setTenantStatus(Integer tenantStatus)
    {
        this.tenantStatus = tenantStatus;
    }

    public String getTenantOperateDate()
    {
        return tenantOperateDate;
    }

    public void setTenantOperateDate(String tenantOperateDate)
    {
        this.tenantOperateDate = tenantOperateDate;
    }
}