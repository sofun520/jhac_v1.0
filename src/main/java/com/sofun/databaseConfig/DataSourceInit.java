/**
 * @(#)DataSourceInit2.java 1.0 2016年5月24日
 * @Copyright: Copyright 2010 - 2016 ISoftstone Co. Ltd. All Rights Reserved.
 * @Modification History:
 * @version: HYOM 1.0
 * @Date: 2016年5月24日
 * @Description: (Initialize)
 * @Reviewer:
 * @Review Date:
 */
package com.sofun.databaseConfig;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.alibaba.druid.pool.DruidDataSource;

/**
 * Description
 * 
 * @author qianglic 73817
 */

@Configuration
public class DataSourceInit
{
    @Value("${spring.datasource.driverClassName}")
    private String driverClassName;
    @Value("${spring.datasource.url}")
    private String url;
    @Value("${spring.datasource.username}")
    private String username;
    @Value("${spring.datasource.password}")
    private String password;

    @Bean
    public DataSource dataSource()
    {
        DruidDataSource bean = new DruidDataSource();
        bean.setDriverClassName(driverClassName);
        bean.setUrl(url);
        bean.setUsername(username);
        bean.setPassword(password);
        return bean;
    }

}
