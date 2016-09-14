package com.sofun.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

@Component("powerFilter")
public class PowerFilter implements Filter
{

    @Override
    public void destroy()
    {

    }

    @Override
    public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2) throws IOException,
            ServletException
    {
        HttpServletRequest request = (HttpServletRequest) arg0;
        HttpServletResponse response = (HttpServletResponse) arg1;
        HttpSession session = request.getSession();
        if (StringUtils.isEmpty(session.getAttribute("userName")))
        {
            response.sendRedirect("../login.html");
        }
        else
        {
            arg2.doFilter(request, response);
        }
    }

    @Override
    public void init(FilterConfig arg0) throws ServletException
    {

    }

}
