package com.sofun.common.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SessionUtils
{

    public static String getSessionValue(HttpServletRequest request, String key)
    {
        HttpSession session = request.getSession();
        return (String) session.getAttribute(key);
    }

}
