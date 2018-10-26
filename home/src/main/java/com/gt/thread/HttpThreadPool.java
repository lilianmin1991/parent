package com.gt.thread;

import java.io.ObjectStreamException;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import org.java_websocket.WebSocket;

import com.gt.thread.demo.HttpThread;

public class HttpThreadPool {
		//[静态内部类]型单例模式
		private HttpThreadPool(){}
	    private static class ProcessHolder{
	            public static HttpThreadPool httpThreadPool = new HttpThreadPool();
	    }
	    private static HttpThreadPool getProcess(){
	        return ProcessHolder.httpThreadPool;
	    }
	    //反序列化
	    protected Object readResolve() throws ObjectStreamException {
	    	System.out.println("GT：HttpThreadPool调用了readResolve方法！避免了单例HttpThreadPool被再次实例化");
	    	return HttpThreadPool.getProcess(); 
	    }
	    public static String getAnswer(Long lon,Map<WebSocket,String> wlMap) {
	    	String answer = null;
	    	try {
	    		getProcess().getAnswerProcess(lon);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return answer;
	    }
	    //创建最多同时有200个待处理任务，每次做多处理2个任务的线程池
	    //private static ThreadPoolExecutor executor = new ThreadPoolExecutor(2,2,2,TimeUnit.SECONDS,new ArrayBlockingQueue<Runnable>(20000)); 
	    private static ThreadPoolExecutor executor = new ThreadPoolExecutor(2,Integer.MAX_VALUE,5,TimeUnit.SECONDS,new LinkedBlockingQueue<Runnable>()); 
	    private static HttpThread httpThread = new HttpThread();
	    private void getAnswerProcess(Long lon) throws InterruptedException {
			FutureTask<String> futureTask = new FutureTask<>(httpThread);
			executor.execute(futureTask);
			System.out.print("-------------------------------------------------------------【核心池大小】:"+executor.getCorePoolSize()); 
			System.out.print("-【当前线程池的线程数量】:"+executor.getPoolSize());
			System.out.println("-【队列线程数】:"+executor.getQueue().size()); 
			
		/*	try{
				String taskResult = futureTask.get(5,TimeUnit.SECONDS);
				if (taskResult != null) {
					//System.out.println(result);
					System.out.println("线程返回答案："+taskResult);
				} 
			}catch (InterruptedException e){
				e.printStackTrace();
			}catch (ExecutionException e){
				e.printStackTrace();
			}catch (TimeoutException e) {  
				//System.out.println("python处理数据时间过长，超时了!");
				System.out.println("小智回答超时");
				//futureTask.cancel(true);
			} */
		} 
		// 按钮呈红色，因为池中还有线程在等待任务 // 删除的是>corePoolSize的多余线程 }
}
