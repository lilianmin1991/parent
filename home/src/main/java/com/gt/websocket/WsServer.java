package com.gt.websocket;

import java.net.InetSocketAddress;
import java.util.Calendar;

import org.java_websocket.WebSocket;
import org.java_websocket.handshake.ClientHandshake;
import org.java_websocket.server.WebSocketServer;

import com.gt.http.HttpRequest;
import com.gt.python.ExecutePy;

public class WsServer extends WebSocketServer {
	
    ExecutePy executePy = ExecutePy.getProcess();
    
	public WsServer(int port) {
        super(new InetSocketAddress(port));
    }

    public WsServer(InetSocketAddress address) {
        super(address);
    }

    @Override
    public void onOpen(WebSocket conn, ClientHandshake handshake) {
        // ws连接的时候触发的代码，onOpen中我们不做任何操作
    	
    }

    @Override
    public void onClose(WebSocket conn, int code, String reason, boolean remote) {
        //断开连接时候触发代码
        userLeave(conn);
        System.out.println(reason);
    }

    @Override
    public void onMessage(WebSocket conn, String message) {
    	/**
        if(null != message &&message.startsWith("join")){
            String userName=message.replaceFirst("join", "");//用户名
            userJoin(conn,userName);//用户加入
            
            if(userName.equals("毕恩华")||userName.equals("老毕")) {
            	WsPool.sendMessageToUser(conn, "队长好！");
            }else {
            	WsPool.sendMessageToUser(conn, "哈喽!"+'"'+WsPool.getUserByWs(conn)+'"'+"");
            }
            System.out.println('"'+WsPool.getUserByWs(conn)+'"'+"已加入");
            
        }else if(null != message && message.startsWith("leave")){
        	System.out.println('"'+WsPool.getUserByWs(conn)+'"'+"已离开");
            userLeave(conn);
        }
    	else 
    	 */
    	if(true){
    		String userName=Calendar.getInstance().getTimeInMillis()+"";//用户名
    		String connedUser = WsPool.getUserByWs(conn);
    		if(connedUser==null) {
    			userJoin(conn,userName);//用户加入
    		}
    		//String[] result = executePy.pyGetAnswer(message);
    		String result = HttpRequest.getAnswer(message);
    		//String sysMess = "当前时间戳："+Calendar.getInstance().getTimeInMillis()+"";
    		if(result!=null && !result.equals("")) {
    			WsPool.sendMessageToUser(conn, result); //返回结果
    		}else {
    			WsPool.sendMessageToUser(conn, "python服务异常");
    		}
        	System.out.println(WsPool.getUserByWs(conn)+">[服务器]："+message);
        	System.out.println("[服务器]>"+WsPool.getUserByWs(conn)+"："+result);
        }
    }

    @Override
    public void onError(WebSocket conn, Exception ex) {
        //错误时候触发的代码
        System.out.println("on error");
        ex.printStackTrace();
    }
    /**
     * 去除掉失效的websocket链接
     * @param conn
     */
    private void userLeave(WebSocket conn){
        WsPool.removeUser(conn);
    }
    /**
     * 将websocket加入用户池
     * @param conn
     * @param userName
     */
    private void userJoin(WebSocket conn,String userName){
        WsPool.addUser(userName, conn);
    }

	@Override
	public void onStart() {
		// TODO Auto-generated method stub
		
	}
}
