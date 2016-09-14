package com.sofun.api.common;

import com.alibaba.fastjson.JSONObject;

public class ReturnEntity
{

    private JSONObject returnData;

    private String returnTag;

    private ErrorEntity returnMsg;

    public ReturnEntity()
    {

    }

    public ReturnEntity(JSONObject returnData)
    {
        this.returnData = returnData;
    }

    public JSONObject getReturnData()
    {
        return returnData;
    }

    public void setReturnData(JSONObject returnData)
    {
        this.returnData = returnData;
    }

    public String getReturnTag()
    {
        return returnTag;
    }

    public void setReturnTag(String returnTag)
    {
        this.returnTag = returnTag;
    }

    public ErrorEntity getReturnMsg()
    {
        return returnMsg;
    }

    public void setReturnMsg(ErrorEntity returnMsg)
    {
        this.returnMsg = returnMsg;
    }

}
