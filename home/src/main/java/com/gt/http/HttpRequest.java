package com.gt.http;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream; 
import java.net.HttpURLConnection; 
import java.net.URL; 
import org.json.JSONObject;

import com.gt.common.utils.ParseData; 
public class HttpRequest { 
	public static String getAnswer(String question) {
		String answer = "";
		try { 
				JSONObject obj = new JSONObject(); 
				obj.put("question", "我想买保险"); 
				
				URL url = new URL("http://39.105.85.33:8866/qa");// 创建url资源
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();// 建立http连接 
				
				byte[] data = (obj.toString()).getBytes(); //转换为字节数组
				conn.setRequestMethod("POST"); //设置传递方式
				conn.setRequestProperty("contentType", "application/x-www-form-urlencoded"); //设置文件类型
				conn.setRequestProperty("Charset", "UTF-8"); //设置文件字符集
				conn.setRequestProperty("Connection", "close"); //设置维持长连接  Keep-Alive or close
				conn.setDoOutput(true); //设置允许输出 
				conn.setDoInput(true); 
				conn.setUseCaches(true); //设置不用缓存
				conn.setRequestProperty("Content-Length", String.valueOf(data.length)); //设置文件长度
				conn.setRequestProperty("Accept", "*/*");
				conn.connect();// 建立连接
				OutputStream out = conn.getOutputStream();
				out.write(("question='老年人保险'").getBytes()); //写入请求的字符串
				out.flush(); 
				out.close();
				
				// 请求返回的状态 
				if (conn.getResponseCode() == HttpURLConnection.HTTP_OK) {
					 System.out.println("连接成功"); 
					 BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(),"UTF-8"));
	                 String line = "";
	                 while(null != (line=br.readLine())){
	                	 answer += line;
	                 }
	                 br.close();
	                 System.out.println("answer:"+answer); 
	                 //conn.disconnect();
				 } else { 
					System.out.println(conn.getResponseCode());  
				 } 
			} catch (Exception e) {
				e.printStackTrace(); 
			}
			return ParseData.decodeUnicode(answer); 
	}
	
	
 }
