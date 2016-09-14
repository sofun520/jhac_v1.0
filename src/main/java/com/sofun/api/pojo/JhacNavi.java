package com.sofun.api.pojo;

import java.io.Serializable;

public class JhacNavi implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private Integer id;

    private String name;

    private String url;

    private Integer parentId;

    public Integer getId()
    {
        return id;
    }

    public void setId(Integer id)
    {
        this.id = id;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name == null ? null : name.trim();
    }

    public String getUrl()
    {
        return url;
    }

    public void setUrl(String url)
    {
        this.url = url == null ? null : url.trim();
    }

    public Integer getParentId()
    {
        return parentId;
    }

    public void setParentId(Integer parentId)
    {
        this.parentId = parentId;
    }
}