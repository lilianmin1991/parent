package com.gt.http;

import java.io.InputStream; 
import java.io.OutputStream; 
import java.net.HttpURLConnection; 
import java.net.URL; 
import org.json.JSONObject; 
public class HttpRequest { 
	public static String getAnswer(String question) {
		String answer = null;
		try { 
			JSONObject obj = new JSONObject(); 
			obj.append("question", "我想买保险"); 
			System.out.println(obj); 
			// 创建url资源 
			URL url = new URL("http://127.0.0.1:8088/qa");
			// 建立http连接 
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			 // 设置允许输出 
			 conn.setDoOutput(true); 
			 conn.setDoInput(true); 
			 // 设置不用缓存 
			 conn.setUseCaches(false); 
			 // 设置传递方式 
			 conn.setRequestMethod("POST"); 
			 // 设置维持长连接  Keep-Alive or close
			 conn.setRequestProperty("Connection", "close"); 
			 // 设置文件字符集: 
			 conn.setRequestProperty("Charset", "UTF-8"); 
			 //转换为字节数组 
			 byte[] data = (obj.toString()).getBytes(); 
			 // 设置文件长度 
			 conn.setRequestProperty("Content-Length", String.valueOf(data.length)); 
			 // 设置文件类型: 
			 conn.setRequestProperty("contentType", "application/json"); 
			 // 开始连接请求 
			 conn.connect();
			 OutputStream out = conn.getOutputStream();     
			 // 写入请求的字符串 
			 out.write((obj.toString()).getBytes()); 
			 out.flush(); 
			 out.close(); 
			 System.out.println(conn.getResponseCode()); 
			 // 请求返回的状态 
			 if (conn.getResponseCode() == 200) {
				 System.out.println("连接成功"); 
				 // 请求返回的数据 
				 InputStream in = conn.getInputStream(); 
				 String a = null; 
				 try { 
					byte[] data1 = new byte[in.available()]; 
					in.read(data1); 
					// 转成字符串 
					a = new String(data1); 
					answer = a;
					System.out.println(a); 
				 } catch (Exception e1) { 
					e1.printStackTrace(); 
				 } 
			 } else { 
				System.out.println("no++"); 
			 } 
		} catch (Exception e) {
		}
		return answer; 
	} 
 }
