package com.sofun.api.pojo;

import java.io.Serializable;

public class JhacSaasOperate implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String operateId;

    private String operateNewExpireDate;

    private String operateOldExpireDate;

    private String operateNewBeginDate;

    private String operateTenantId;

    private String operateOrderId;

    private String operateDate;

    private JhacSaasOrder saasOrder;

    public JhacSaasOrder getSaasOrder()
    {
        return saasOrder;
    }

    public void setSaasOrder(JhacSaasOrder saasOrder)
    {
        this.saasOrder = saasOrder;
    }

    public String getOperateId()
    {
        return operateId;
    }

    public void setOperateId(String operateId)
    {
        this.operateId = operateId == null ? null : operateId.trim();
    }

    public String getOperateNewExpireDate()
    {
        return operateNewExpireDate;
    }

    public void setOperateNewExpireDate(String operateNewExpireDate)
    {
        this.operateNewExpireDate = operateNewExpireDate;
    }

    public String getOperateOldExpireDate()
    {
        return operateOldExpireDate;
    }

    public void setOperateOldExpireDate(String operateOldExpireDate)
    {
        this.operateOldExpireDate = operateOldExpireDate;
    }

    public String getOperateNewBeginDate()
    {
        return operateNewBeginDate;
    }

    public void setOperateNewBeginDate(String operateNewBeginDate)
    {
        this.operateNewBeginDate = operateNewBeginDate;
    }

    public String getOperateTenantId()
    {
        return operateTenantId;
    }

    public void setOperateTenantId(String operateTenantId)
    {
        this.operateTenantId = operateTenantId == null ? null : operateTenantId.trim();
    }

    public String getOperateOrderId()
    {
        return operateOrderId;
    }

    public void setOperateOrderId(String operateOrderId)
    {
        this.operateOrderId = operateOrderId == null ? null : operateOrderId.trim();
    }

    public String getOperateDate()
    {
        return operateDate;
    }

    public void setOperateDate(String operateDate)
    {
        this.operateDate = operateDate;
    }

    @Override
    public String toString()
    {
        return "JhacSaasOperate [operateId=" + operateId + ", operateNewExpireDate=" + operateNewExpireDate
                + ", operateOldExpireDate=" + operateOldExpireDate + ", operateNewBeginDate=" + operateNewBeginDate
                + ", operateTenantId=" + operateTenantId + ", operateOrderId=" + operateOrderId + ", operateDate="
                + operateDate + ", saasOrder=" + saasOrder + "]";
    }

}