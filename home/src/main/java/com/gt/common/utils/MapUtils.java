package com.gt.common.utils;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import org.java_websocket.WebSocket;

public class MapUtils {
	/**
	* 求Map<K,V>中Key(键)的最大值
	* @param map
	* @return
	*/
	public static Object getMaxKey(Map<Integer, Integer> map) {
	if (map == null) return null;
	Set<Integer> set = map.keySet();
	Object[] obj = set.toArray();
	Arrays.sort(obj);
	return obj[obj.length-1];
	}
	public static Long getMaxKey2(Map<Long,Map<WebSocket,String>> map) {
		if (map == null) return null;
		Set<Long> set = map.keySet();
		Object[] obj = set.toArray();
		Arrays.sort(obj);
		return (Long) obj[obj.length-1];
	}
	/**
	* 求Map<K,V>中Key(键)的最小值
	* @param map
	* @return
	*/
	public static Long getMinKey2(Map<Long,Map<WebSocket,String>> map) {
		if (map == null) return null;
		Set<Long> set = map.keySet();
		Object[] obj = set.toArray();
		Arrays.sort(obj);
		return (Long) obj[0];
	}
	 
	/**
	* 求Map<K,V>中Value(值)的最大值
	* @param map
	* @return
	*/
	public static Object getMaxValue(Map<Integer, Integer> map) {
	if (map == null) return null;
	Collection<Integer> c = map.values();
	Object[] obj = c.toArray();
	Arrays.sort(obj);
	return obj[obj.length-1];
	}
}
