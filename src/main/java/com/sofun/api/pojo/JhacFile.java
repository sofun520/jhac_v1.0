package com.sofun.api.pojo;

import java.io.Serializable;
import java.util.Date;

public class JhacFile implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private String fileId;

    private String fileName;

    private String fileDescription;

    private String fileUserId;

    private String fileAddDate;

    private Integer fileStatus;

    public String getFileId()
    {
        return fileId;
    }

    public void setFileId(String fileId)
    {
        this.fileId = fileId == null ? null : fileId.trim();
    }

    public String getFileName()
    {
        return fileName;
    }

    public void setFileName(String fileName)
    {
        this.fileName = fileName == null ? null : fileName.trim();
    }

    public String getFileDescription()
    {
        return fileDescription;
    }

    public void setFileDescription(String fileDescription)
    {
        this.fileDescription = fileDescription == null ? null : fileDescription.trim();
    }

    public String getFileUserId()
    {
        return fileUserId;
    }

    public void setFileUserId(String fileUserId)
    {
        this.fileUserId = fileUserId == null ? null : fileUserId.trim();
    }

    public String getFileAddDate()
    {
        return fileAddDate;
    }

    public void setFileAddDate(String fileAddDate)
    {
        this.fileAddDate = fileAddDate;
    }

    public Integer getFileStatus()
    {
        return fileStatus;
    }

    public void setFileStatus(Integer fileStatus)
    {
        this.fileStatus = fileStatus;
    }
}