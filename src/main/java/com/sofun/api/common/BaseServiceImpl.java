package com.sofun.api.common;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

@Transactional
public abstract class BaseServiceImpl<T extends Serializable> implements BaseService<T>
{

    protected abstract BaseDao<T> getDao();

    protected Class<T> entityClazz;

    @Override
    public String save(T t)
    {
        return null;
    }

    @Override
    public void delete(String id)
    {
        getDao().delete(id);
    }

    @Override
    public T find(String id)
    {
        return getDao().find(id);
    }

    @Override
    public List<T> query(Map<String, Object> map)
    {
        return getDao().query(map);
    }

}
