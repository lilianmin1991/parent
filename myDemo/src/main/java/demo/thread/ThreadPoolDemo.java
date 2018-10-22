package demo.thread;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class ThreadPoolDemo {
	private static ExecutorService t = new ThreadPoolExecutor(2,//核心池大小
															  2,//最大线程数
															  0L,//当线程数量大于核心池大小的时候，在没有超过指定的时间内是不从线程池中删除空闲线程的，如果超过这个时间，则删除
															  TimeUnit.MILLISECONDS,//时间单位
															  new LinkedBlockingQueue<Runnable>()//保存当前任务的队列
															  );
	
}