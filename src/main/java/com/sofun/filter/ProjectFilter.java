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

import org.springframework.boot.bind.RelaxedPropertyResolver;
import org.springframework.context.EnvironmentAware;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

// @Component("projectFilter")
public class ProjectFilter implements Filter, EnvironmentAware
{

    private RelaxedPropertyResolver propertyResolver;

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
        String url = request.getRequestURI();
        System.out.println(propertyResolver.getProperty("prefix") + url);
        String host = request.getServerName();
        System.out.println("server name" + host);
        request.getRequestDispatcher(propertyResolver.getProperty("prefix") + url).forward(request, response);
        arg2.doFilter(request, response);

    }

    @Override
    public void init(FilterConfig arg0) throws ServletException
    {

    }

    @Override
    public void setEnvironment(Environment environment)
    {
        this.propertyResolver = new RelaxedPropertyResolver(environment, "project.");
    }

}
