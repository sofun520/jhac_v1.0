package com.sofun.databaseConfig;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.bind.RelaxedPropertyResolver;
import org.springframework.context.EnvironmentAware;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@Configuration
public class SqlSessionFactoryInit implements EnvironmentAware
{

    public static final String SQL_SESSION_FACTORY_BEAN_NAME = "sqlSessionFactory";

    private RelaxedPropertyResolver propertyResolver;

    @Autowired
    private DataSource dataSource;

    @Bean(name = SQL_SESSION_FACTORY_BEAN_NAME)
    public SqlSessionFactory sqlSessionFactory() throws Exception
    {
        org.mybatis.spring.SqlSessionFactoryBean bean = new org.mybatis.spring.SqlSessionFactoryBean();
        bean.setDataSource(dataSource);
        bean.setMapperLocations(new PathMatchingResourcePatternResolver().getResources(propertyResolver
                .getProperty("mapperLocations")));
        return bean.getObject();
    }

    @Override
    public void setEnvironment(Environment environment)
    {
        this.propertyResolver = new RelaxedPropertyResolver(environment, "mybatis.");
    }

}
