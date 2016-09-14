package com.sofun.databaseConfig;

import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.boot.bind.RelaxedPropertyResolver;
import org.springframework.context.EnvironmentAware;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;

@Configuration
public class MapperScannerConfigurerInit implements EnvironmentAware
{

    private RelaxedPropertyResolver propertyResolver;

    @Bean
    public MapperScannerConfigurer mapperScannerConfigurer()
    {
        MapperScannerConfigurer bean = new MapperScannerConfigurer();
        bean.setSqlSessionFactoryBeanName(SqlSessionFactoryInit.SQL_SESSION_FACTORY_BEAN_NAME);
        bean.setBasePackage(propertyResolver.getProperty("basePackage"));
        return bean;
    }

    @Override
    public void setEnvironment(Environment environment)
    {
        this.propertyResolver = new RelaxedPropertyResolver(environment, "mybatis.");
    }
}
