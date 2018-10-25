package com.gt.http;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

import com.gt.common.utils.ParseData;

public class HttpClientRequest {

	public static String getAnswer(String question) {
		String answer = "";
        // 1. 创建HttpClient对象
        CloseableHttpClient httpClient = HttpClientBuilder.create().build();
        // 2. 创建HttpPost对象
        HttpPost post = new HttpPost(
                "http://39.105.85.33:8866/qa");
        post.setHeader("Connection", "close");
        // 3. 设置POST请求传递参数
        List<NameValuePair> params = new ArrayList<NameValuePair>();
        params.add(new BasicNameValuePair("question", "我想买保险"));
        try {
            UrlEncodedFormEntity entity = new UrlEncodedFormEntity(params);
            post.setEntity(entity);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        // 4. 执行请求并处理响应
        try {
            CloseableHttpResponse response = httpClient.execute(post);
            HttpEntity entity = response.getEntity();
            if (entity != null){
                System.out.println("响应内容：");
                System.out.println(EntityUtils.toString(entity));
                answer = EntityUtils.toString(entity);
            }
            response.close();
        } catch (ClientProtocolException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            // 释放资源
            try {
                httpClient.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return answer;
    }
	
	/** 
     * 发送 http post 请求，参数以form表单键值对的形式提交。 
     */  
    public static String httpPostForm(String url,Map<String,String> params, Map<String,String> headers,String encode){  
        String answer = "";
    	if(encode == null){  
            encode = "utf-8";  
        }
        //HttpClients.createDefault()等价于 HttpClientBuilder.create().build();   
        CloseableHttpClient closeableHttpClient = HttpClients.createDefault();   
        HttpPost httpost = new HttpPost(url);  
        
        //设置header
        if (headers != null && headers.size() > 0) {
            for (Map.Entry<String, String> entry : headers.entrySet()) {
                httpost.setHeader(entry.getKey(),entry.getValue());
            }
        }
        //组织请求参数  
        List<NameValuePair> paramList = new ArrayList <NameValuePair>();  
        if(params != null && params.size() > 0){
            Set<String> keySet = params.keySet();  
            for(String key : keySet) {  
                paramList.add(new BasicNameValuePair(key, params.get(key)));  
            }  
        }
        try {  
            httpost.setEntity(new UrlEncodedFormEntity(paramList, encode));  
        } catch (UnsupportedEncodingException e1) {  
            e1.printStackTrace();  
        }  
        CloseableHttpResponse  httpResponse = null;  
        try {  
            httpResponse = closeableHttpClient.execute(httpost);  
            HttpEntity entity = httpResponse.getEntity();  
            answer = EntityUtils.toString(entity, encode);  
            System.out.println(ParseData.decodeUnicode(answer));//Unicode转成汉字
        } catch (Exception e) {  
            e.printStackTrace();  
        }finally{  
            try {  
                httpResponse.close();  
            } catch (IOException e) {  
                e.printStackTrace();  
            }  
        }  
        try {  //关闭连接、释放资源  
            closeableHttpClient.close();  
        } catch (IOException e) {  
            e.printStackTrace();  
        } 
        return ParseData.decodeUnicode(answer);  
    }  
}


