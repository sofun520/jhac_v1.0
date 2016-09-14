package com.sofun.databaseConfig;

import org.springframework.boot.context.embedded.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.sofun.filter.EncodingFilter;
import com.sofun.filter.PowerFilter;

@Configuration
public class WebConfig
{

    @Bean
    public FilterRegistrationBean filterRegistrationBean(EncodingFilter myFilter)
    {
        FilterRegistrationBean filterRegistrationBean = new FilterRegistrationBean();
        filterRegistrationBean.setFilter(myFilter);
        filterRegistrationBean.setEnabled(true);
        filterRegistrationBean.addUrlPatterns("/jhac-api/*");
        return filterRegistrationBean;
    }

    @Bean
    public FilterRegistrationBean powerFilterBean(PowerFilter powerFilter)
    {
        FilterRegistrationBean powerFilterBean = new FilterRegistrationBean();
        powerFilterBean.setFilter(powerFilter);
        powerFilterBean.setEnabled(true);
        powerFilterBean.addUrlPatterns("/admin/*");
        return powerFilterBean;
    }

}
