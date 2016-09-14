package com.sofun.api.pojo;

import java.io.Serializable;

public class JhacUrl implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String urlId;

    private String urlName;

    private String urlLink;

    private String urlDate;

    private String urlParent;

    public String getUrlParent()
    {
        return urlParent;
    }

    public void setUrlParent(String urlParent)
    {
        this.urlParent = urlParent;
    }

    public String getUrlId()
    {
        return urlId;
    }

    public void setUrlId(String urlId)
    {
        this.urlId = urlId == null ? null : urlId.trim();
    }

    public String getUrlName()
    {
        return urlName;
    }

    public void setUrlName(String urlName)
    {
        this.urlName = urlName == null ? null : urlName.trim();
    }

    public String getUrlLink()
    {
        return urlLink;
    }

    public void setUrlLink(String urlLink)
    {
        this.urlLink = urlLink == null ? null : urlLink.trim();
    }

    public String getUrlDate()
    {
        return urlDate;
    }

    public void setUrlDate(String urlDate)
    {
        this.urlDate = urlDate;
    }

    @Override
    public String toString()
    {
        return "JhacUrl [urlId=" + urlId + ", urlName=" + urlName + ", urlLink=" + urlLink + ", urlDate=" + urlDate
                + ", urlParent=" + urlParent + "]";
    }

}