package com.gt.thread;

import org.java_websocket.WebSocket;

import com.gt.common.utils.MapUtils;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class QuestionPool {
	private static Lock lock = new ReentrantLock();
	//临时存储用户的问题
	public static final Map<Long,Map<WebSocket,String>> wsUserQuestionMap= new HashMap<Long,Map<WebSocket,String>>();
	//获取用户问题
	public static synchronized Map<Long,Map<WebSocket,String>> getQuestion(long lon) {
		//lock.lock();
		Map<Long,Map<WebSocket,String>> result = new HashMap<Long,Map<WebSocket,String>>();
		//lock.unlock();
		result.put(lon, wsUserQuestionMap.get(lon));
		return result;
	}
	//获取最早的用户问题map池
	public static synchronized Map<Long,Map<WebSocket,String>> getEarliestQuestion() {
		Long minKey = MapUtils.getMinKey2(QuestionPool.wsUserQuestionMap);
		Map<Long,Map<WebSocket,String>> wsMap = QuestionPool.getQuestion(minKey);
		removeQuestion(minKey);
		System.out.println("取走问题......"+minKey+"等待总数："+wsUserQuestionMap.size());
		return wsMap;
	}
	//存储用户问题
	public static synchronized void addQuestion(Long lon,Map<WebSocket, String> wsMap) {
		//lock.lock();
		wsUserQuestionMap.put(lon, wsMap);
		//lock.unlock();
		System.out.println("缓存问题......"+lon+"，等待总数："+wsUserQuestionMap.size());
	}
	//删除用户问题
	public static boolean removeQuestion(long lon) {
		//lock.lock();
		if(wsUserQuestionMap.containsKey(lon)) {
			wsUserQuestionMap.remove(lon);
			//lock.unlock();
			return true;
		}else {
			//lock.unlock();
			return false;
		}
		
	}

}
