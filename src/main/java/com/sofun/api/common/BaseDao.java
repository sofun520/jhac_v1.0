package com.sofun.api.common;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public interface BaseDao<T extends Serializable>
{

    void insert(T t);

    void delete(String id);

    void update(T t);

    T find(String id);

    List<T> query(Map<String, Object> map);

    int total(Map<String, Object> map);

}
