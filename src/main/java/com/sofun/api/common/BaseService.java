package com.sofun.api.common;

import java.util.List;
import java.util.Map;

public interface BaseService<T>
{

    String save(T t);

    void delete(String id);

    T find(String id);

    List<T> query(Map<String, Object> map);

    int total(Map<String, Object> map);

}
