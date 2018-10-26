package com.gt.thread.demo;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class Run3 { 
	// 队列使用ArrayBlockingQueue类 ,必须指定大小，加入与删除任务是同一把锁，对流超过指定值，就会增加临时线程
	// 队列使用LinkedBlockingQueue类 ,超过maxSize会等待任务，任务完成后核心池不会关闭线程，只根据keepAliveTime关闭临时线程，加入与删除任务是不是同一把锁，有可能队列
	// 队列使用SynchronousQueue类 ,超过maxSize会报错，所以maxSize要非常大，饱和后必须有另一个线程正在等待接收饱和的元素
	// 并且线程数量>corePoolSize时 
	// 将其余的任务也放入池中，总数量为8，
	// 并没有超过maximumPoolSize值 
	// 由于运行的线程数为8，数量上>corePoolSize为7的值
	// 所以keepAliveTime>5时清除空闲线程
	public static void main(String[] args) throws InterruptedException {
		Runnable runnable = new Runnable() { 
			@Override 
			public void run() { 
				try { 
					System.out.println(Thread.currentThread().getName() + " run!" + System.currentTimeMillis());
					Thread.sleep(1002); 
				} catch (InterruptedException e) {
						e.printStackTrace(); 
				} 
			} 
		};
		ThreadPoolExecutor executor = new ThreadPoolExecutor(2,2,2,TimeUnit.SECONDS,new ArrayBlockingQueue<Runnable>(200)); 
		//ThreadPoolExecutor executor = new ThreadPoolExecutor(2,Integer.MAX_VALUE,5,TimeUnit.SECONDS,new LinkedBlockingQueue<Runnable>()); 
		//ThreadPoolExecutor executor = new ThreadPoolExecutor(2,3,5,TimeUnit.SECONDS,new SynchronousQueue<Runnable>()); 
		for(int i=0;i<200;i++) {
			executor.execute(runnable);
		}
		for(int i=0;i<60;i++) {
			Thread.sleep(1000);
			System.out.println(executor.getCorePoolSize() + "【核心池大小】"); 
			System.out.println(executor.getPoolSize() + "【当前线程池的线程数量】");
			System.out.println(executor.getQueue().size() + "【队列线程数】"); 
		}
	} 
	// 按钮呈红色，因为池中还有线程在等待任务 // 删除的是>corePoolSize的多余线程 }
}


