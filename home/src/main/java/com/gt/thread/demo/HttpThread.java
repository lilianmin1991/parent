package com.gt.thread.demo;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.Callable;

import org.java_websocket.WebSocket;

import com.gt.common.utils.MapUtils;
import com.gt.http.HttpClientRequest;
import com.gt.thread.QuestionPool;

public class HttpThread implements Callable<String>{
	public String call() {
		//获取用户问题
		Map<Long, Map<WebSocket, String>> lwsMap = QuestionPool.getEarliestQuestion();
		Long earliestKey = null;
		String earliestQuestion = null;
		WebSocket earliestUserConn = null;
		for (Entry<Long, Map<WebSocket, String>> entry : lwsMap.entrySet()) { 
			earliestKey = entry.getKey();
			Map<WebSocket, String> earliestWsMap = entry.getValue();
			for(Entry<WebSocket,String> en:earliestWsMap.entrySet()) {
				earliestUserConn = en.getKey();
				earliestQuestion = en.getValue();
			}
				break;
		 }
		
		Map<String,String> params = new HashMap<String,String>();
		params.put("question", earliestQuestion);
		Map<String,String> headers = new HashMap<String,String>();
		headers.put("Content-Type", "application/x-www-form-urlencoded");
		headers.put("Charset", "UTF-8");
		headers.put("Connection", "close");
		System.out.println(earliestQuestion+"等待答案........");
		//Thread.sleep(1000);
		System.out.println(earliestQuestion+"........问题处理结束");
		QuestionPool.removeQuestion(earliestKey);
		return earliestQuestion;
	}
}
