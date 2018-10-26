package com.gt.thread.demo;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class Run2 {
	// 队列使用LinkedBlockingDeque类 
	// 并且线程数量<=corePoolSize 
	// 所以keepAliveTime>5时也不清除空闲线程 
	public Run2() {
	}
	private String getAnswer(String str) throws InterruptedException {
		String result = "";
		Callable<String> callable = new Callable<String>() {
			@Override 
			public String call() {
				Long sTime = System.currentTimeMillis();
				try {
					System.out.print(Thread.currentThread().getName() + " start!"); 
					for(int i = 0;i<9;i++) {
						Thread.sleep(100);
						System.out.print("-");
					}
					Thread.sleep(100);
					System.out.print("end!"); 
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
				Long eTime = System.currentTimeMillis();
				return " 用时："+(eTime-sTime)+"ms";
			}
		};
		ThreadPoolExecutor executor = new ThreadPoolExecutor(1, 1, 5, TimeUnit.SECONDS, new LinkedBlockingDeque<Runnable>()); 
        // 可以获取返回结果，如果futureTask.get()!=null 且无异常，表示执行成功
		for(int i=0;i<22;i++) {
			FutureTask<String> futureTask = new FutureTask<>(callable);
			executor.execute(futureTask);
			try{
				String taskResult = futureTask.get(5,TimeUnit.SECONDS);
				if (taskResult != null) {
					//System.out.println(result);
					result = taskResult;
					return result;
				} 
			}catch (InterruptedException e){
				e.printStackTrace();
			}catch (ExecutionException e){
				e.printStackTrace();
			}catch (TimeoutException e) {  
				//System.out.println("python处理数据时间过长，超时了!");
				return "python处理数据时间过长，超时了!";
				//futureTask.cancel(true);
			} 
		}
		return "python处理数据时间过长，超时了!";
		/**
		Thread.sleep(300); 
		System.out.println(executor.getCorePoolSize() + "【核心池大小】"); 
		System.out.println(executor.getPoolSize() + "【当前线程池的线程数量】");
		System.out.println(executor.getQueue().size() + "【队列线程数】"); 
		Thread.sleep(300); 
		System.out.println(executor.getQueue().size() + "【队列线程数】"); 
		Thread.sleep(300); 
		System.out.println(executor.getQueue().size() + "【队列线程数】"); 
		Thread.sleep(300); 
		System.out.println(executor.getQueue().size() + "【队列线程数】"); 
		Thread.sleep(2000); 
		System.out.println(executor.getCorePoolSize() + "【核心池大小】"); 
		System.out.println(executor.getPoolSize() + "【当前线程池的线程数量】");
		System.out.println(executor.getQueue().size() + "【队列线程数】"); 
		 */
		// 按钮呈红色，因为池中还有线程在等待任务 }
	} 
}


