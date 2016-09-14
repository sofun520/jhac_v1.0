package com.sofun.api.pojo;

import java.io.Serializable;
import java.util.Date;

public class AllwayOutstorage implements Serializable
{
    /**
	 * 
	 */
    private static final long serialVersionUID = 1L;

    private Integer id;

    private String serialno;

    private String option;

    private String frameno;

    private String outbeizhu;

    private String outdate;

    private String address;

    private String outbrand;

    private String person;

    private String location;

    public Integer getId()
    {
        return id;
    }

    public void setId(Integer id)
    {
        this.id = id;
    }

    public String getSerialno()
    {
        return serialno;
    }

    public void setSerialno(String serialno)
    {
        this.serialno = serialno == null ? null : serialno.trim();
    }

    public String getOption()
    {
        return option;
    }

    public void setOption(String option)
    {
        this.option = option == null ? null : option.trim();
    }

    public String getFrameno()
    {
        return frameno;
    }

    public void setFrameno(String frameno)
    {
        this.frameno = frameno == null ? null : frameno.trim();
    }

    public String getOutbeizhu()
    {
        return outbeizhu;
    }

    public void setOutbeizhu(String outbeizhu)
    {
        this.outbeizhu = outbeizhu == null ? null : outbeizhu.trim();
    }

    public String getOutdate()
    {
        return outdate;
    }

    public void setOutdate(String outdate)
    {
        this.outdate = outdate;
    }

    public String getAddress()
    {
        return address;
    }

    public void setAddress(String address)
    {
        this.address = address == null ? null : address.trim();
    }

    public String getOutbrand()
    {
        return outbrand;
    }

    public void setOutbrand(String outbrand)
    {
        this.outbrand = outbrand == null ? null : outbrand.trim();
    }

    public String getPerson()
    {
        return person;
    }

    public void setPerson(String person)
    {
        this.person = person == null ? null : person.trim();
    }

    public String getLocation()
    {
        return location;
    }

    public void setLocation(String location)
    {
        this.location = location == null ? null : location.trim();
    }

    @Override
    public String toString()
    {
        return "AllwayOutstorage [id=" + id + ", serialno=" + serialno + ", option=" + option + ", frameno=" + frameno
                + ", outbeizhu=" + outbeizhu + ", outdate=" + outdate + ", address=" + address + ", outbrand="
                + outbrand + ", person=" + person + ", location=" + location + "]";
    }

}