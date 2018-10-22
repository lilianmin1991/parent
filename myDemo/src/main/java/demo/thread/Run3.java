package demo.thread;

import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class Run3 { 
	// 队列使用SynchronousQueue类 
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
					Thread.sleep(1000); 
				} catch (InterruptedException e) {
						e.printStackTrace(); 
				} 
			} 
		};
		ThreadPoolExecutor executor = new ThreadPoolExecutor(7, 11, 5, TimeUnit.SECONDS, new SynchronousQueue<Runnable>()); 
		executor.execute(runnable);// 1 
		executor.execute(runnable);// 2 
		executor.execute(runnable);// 3 
		executor.execute(runnable);// 4 
		executor.execute(runnable);// 5 
		executor.execute(runnable);// 6 
		executor.execute(runnable);// 7 
		executor.execute(runnable);// 8 
		executor.execute(runnable);// 9 
		executor.execute(runnable);// 10 
		executor.execute(runnable);// 11 
		executor.execute(runnable);// 12 
		executor.execute(runnable);// 13 
		Thread.sleep(300); 
		System.out.println(executor.getCorePoolSize() + "【核心池大小】"); 
		System.out.println(executor.getPoolSize() + "【当前线程池的线程数量】");
		System.out.println(executor.getQueue().size() + "【队列线程数】"); 
		Thread.sleep(2000); 
		System.out.println(executor.getCorePoolSize() + "【核心池大小】"); 
		System.out.println(executor.getPoolSize() + "【当前线程池的线程数量】");
		System.out.println(executor.getQueue().size() + "【队列线程数】");  
	} 
	// 按钮呈红色，因为池中还有线程在等待任务 // 删除的是>corePoolSize的多余线程 }
}


