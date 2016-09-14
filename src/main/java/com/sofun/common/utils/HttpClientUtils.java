/**
 * @(#)HttpClientUtils.java 1.0 2015年8月21日
 * @Copyright: Copyright 2010 - 2015 ISoftstone Co. Ltd. All Rights Reserved.
 * @Modification History:
 * @version: HYOM 1.0
 * @Date: 2015年8月21日
 * @Description: (Initialize)
 * @Reviewer:
 * @Review Date:
 */
package com.sofun.common.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.http.HttpServletRequest;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;

/**
 * http get/post请求工具类
 * 
 * @author qianglic 73817
 */

@SuppressWarnings("deprecation")
public class HttpClientUtils
{

    private DefaultHttpClient httpClient = new DefaultHttpClient();

    /**
     * httpClient get请求
     * 
     * @param url
     *            请求url
     * @return remark
     */
    public String getMethod(String url)
    {
        try
        {
            HttpGet method = new HttpGet(url);
            HttpResponse result = httpClient.execute(method);
            return EntityUtils.toString(result.getEntity());
        }
        catch (ClientProtocolException e)
        {
            e.printStackTrace();
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }
        return "";
    }

    /**
     * httpClient post请求
     * 
     * @param url
     *            请求url
     * @param jsonParam
     *            请求参数为json类型的字符串
     * @return remark
     */
    public String postMethod(String url, String jsonParam)
    {
        try
        {
            HttpPost method = new HttpPost(url);

            StringEntity entity = new StringEntity(jsonParam, "utf-8");
            entity.setContentEncoding("UTF-8");
            entity.setContentType("application/json");
            method.setEntity(entity);

            HttpResponse result = httpClient.execute(method);
            return EntityUtils.toString(result.getEntity(), HTTP.UTF_8);
        }
        catch (ClientProtocolException e)
        {
            e.printStackTrace();
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }
        return "";
    }

    public static String getStringFromRequest(HttpServletRequest request) throws Exception
    {
        StringBuilder sb = new StringBuilder();
        BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream(), "UTF-8"));
        String line = null;
        while ((line = br.readLine()) != null)
        {
            sb.append(line);
        }
        String requestJson = sb.toString();
        return requestJson;
    }
}
