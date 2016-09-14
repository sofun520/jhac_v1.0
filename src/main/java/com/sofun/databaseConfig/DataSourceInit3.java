package com.sofun.databaseConfig;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

//@Configuration
public class DataSourceInit3
{

    @Value("${spring.datasource.driverClassName}")
    private String driverClassName;
    @Value("${spring.datasource.url}")
    private String url;
    @Value("${spring.datasource.username}")
    private String username;
    @Value("${spring.datasource.password}")
    private String password;

    //@Bean
    public DataSource dataSource()
    {
        org.apache.tomcat.jdbc.pool.DataSource bean = new org.apache.tomcat.jdbc.pool.DataSource();
        bean.setDriverClassName(driverClassName);
        bean.setUrl(url);
        bean.setUsername(username);
        bean.setPassword(password);
        return bean;
    }

}
