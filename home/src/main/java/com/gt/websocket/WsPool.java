package com.gt.websocket;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

import org.java_websocket.WebSocket;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class WsPool {
	private static final Map<WebSocket, String> wsUserMap = new HashMap<WebSocket, String>();
	//logback日志
	private static Lock loggerLock = new ReentrantLock();
	final static Logger logger = LoggerFactory.getLogger("qa_history");
	public static void logger(String mess,String type) {
		loggerLock.lock();
		if(type.equals("info")) {
			logger.info(mess);
		}
		loggerLock.unlock();
	}

    /**
     * 通过websocket连接获取其对应的用户
     * 
     * @param conn
     * @return
     */
    public static String getUserByWs(WebSocket conn) {
        return wsUserMap.get(conn);
    }

    /**
     * 根据userName获取WebSocket,这是一个list,此处取第一个
     * 因为有可能多个websocket对应一个userName（但一般是只有一个，因为在close方法中，我们将失效的websocket连接去除了）
     * 
     * @param user
     */
    public static WebSocket getWsByUser(String userName) {
        Set<WebSocket> keySet = wsUserMap.keySet();
        synchronized (keySet) {
            for (WebSocket conn : keySet) {
                String cuser = wsUserMap.get(conn);
                if (cuser.equals(userName)) {
                    return conn;
                }
            }
        }
        return null;
    }

    /**
     * 向连接池中添加连接
     * 
     * @param inbound
     */
    public static void addUser(String userName, WebSocket conn) {
        wsUserMap.put(conn, userName); // 添加连接
    }

    /**
     * 获取所有连接池中的用户，因为set是不允许重复的，所以可以得到无重复的user数组
     * 
     * @return
     */
    public static Collection<String> getOnlineUser() {
        List<String> setUsers = new ArrayList<String>();
        Collection<String> setUser = wsUserMap.values();
        for (String u : setUser) {
            setUsers.add(u);
        }
        return setUsers;
    }

    /**
     * 移除连接池中的连接
     * 
     * @param inbound
     */
    public static boolean removeUser(WebSocket conn) {
        if (wsUserMap.containsKey(conn)) {
            wsUserMap.remove(conn); // 移除连接
            return true;
        } else {
            return false;
        }
    }

    /**
     * 向特定的用户发送数据
     * 
     * @param user
     * @param message
     */
    private static Lock sendLock = new ReentrantLock();
    public static void sendMessageToUser(WebSocket conn, String message) {
    	sendLock.lock();
        if (null != conn && null != wsUserMap.get(conn)) {
            conn.send(message);
            logger("用户["+WsPool.getUserByWs(conn)+"] received: "+message,"info");
        }
        sendLock.unlock();
    }

    /**
     * 向所有的用户发送消息
     * 
     * @param message
     */
    private static Lock sendToAllLock = new ReentrantLock();
    public static void sendMessageToAll(String message) {
    	sendToAllLock.lock();
        Set<WebSocket> keySet = wsUserMap.keySet();
        synchronized (keySet) {
            for (WebSocket conn : keySet) {
                String user = wsUserMap.get(conn);
                if (user != null) {
                    conn.send(message);
                }
            }
        }
        sendToAllLock.unlock();
    }
}
