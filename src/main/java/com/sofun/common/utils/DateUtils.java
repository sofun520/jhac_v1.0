package com.sofun.common.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtils
{

    public static String getNow()
    {
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sf.format(new Date());
    }

    public static String getOrderId()
    {
        SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddHHmmss");
        return sf.format(new Date());
    }

    public static String getStringDate(Date date)
    {
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sf.format(date);
    }

    public static Date getDate(String stringDate)
    {
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try
        {
            return sf.parse(stringDate);
        }
        catch (ParseException e)
        {
            e.printStackTrace();
        }
        return null;
    }

    public static boolean after(Date now, String date)
    {
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try
        {
            Date newDate = sf.parse(date);
            if (now.after(newDate))
            {
                return true;
            }
        }
        catch (ParseException e)
        {
            e.printStackTrace();
        }
        return false;
    }

    public static Date getAfter(Date date, String type, int num)
    {
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        if ("y".equals(type))
        {
            c.add(Calendar.YEAR, num);
        }
        else if ("m".equals(type))
        {
            c.add(Calendar.MONTH, num);
        }
        else if ("d".equals(type))
        {
            c.add(Calendar.DAY_OF_YEAR, num);
        }
        return c.getTime();
    }
}
