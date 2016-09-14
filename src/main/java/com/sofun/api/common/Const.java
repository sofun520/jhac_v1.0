package com.sofun.api.common;

public class Const
{

    public static String INTERNAL_ERROR = "100500";
    public static String USER_NAME_OR_PASS_ERROR = "100100";
    public static String USER_NOT_CHECK_ERROR = "100101";
    public static String USER_NO_SERVICE_ERROR = "100102";
    public static String USER_SERVICE_EXPIRE_ERROR = "100103";
    public static String USER_FROZEN_ERROR = "100104";
    public static String CHECK_PIC_ERROR = "100105";

    @SuppressWarnings("unused")
    public static String getMsg(final String errorCode)
    {
        String msg = null;
        if (INTERNAL_ERROR.equals(errorCode))
        {
            msg = "内部错误";
        }
        else if (USER_NAME_OR_PASS_ERROR.equals(errorCode))
        {
            msg = "用户名或密码错误";
        }
        else if (USER_NOT_CHECK_ERROR.equals(errorCode))
        {
            msg = "用户帐号处于未启用状态";
        }
        else if (CHECK_PIC_ERROR.equals(errorCode))
        {
            msg = "验证码输入错误";
        }
        else if (USER_NO_SERVICE_ERROR.equals(errorCode))
        {
            msg = "还未开通服务";
        }
        else if (USER_SERVICE_EXPIRE_ERROR.equals(errorCode))
        {
            msg = "服务到期暂停，请续费";
        }
        else if (USER_FROZEN_ERROR.equals(errorCode))
        {
            msg = "用户已冻结，请联系区域总监";
        }
        return msg;
    }
}
