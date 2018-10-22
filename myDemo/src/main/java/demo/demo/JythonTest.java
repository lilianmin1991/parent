package demo.demo;

import java.util.Properties;

import org.junit.Test;
import org.python.util.PythonInterpreter;
public class JythonTest { 
	@Test
	public static void main(String[] args) {
			long initTime=System.currentTimeMillis();
			Properties props = new Properties();
			props.put("python.home", "C:\\jython2.7.0");
			props.put("python.console.encoding", "UTF-8");
			props.put("python.security.respectJavaAccessibility", "false");
			props.put("python.import.site", "false");
			Properties preprops = System.getProperties();
			PythonInterpreter.initialize(preprops, props, new String[0]);
			PythonInterpreter interpreter = new PythonInterpreter();
			
			long startTime=System.currentTimeMillis();
			long iTime=startTime-initTime;
			System.out.println("初始化消耗时间:"+iTime);
			try {
				String str = "days=('a','b','c','d','e','f','g'); ";
				interpreter.exec(str);
				System.out.println("python执行"+str);
				for(int i=0;i<7;i++) {
					
					long fTime=System.currentTimeMillis();
					interpreter.exec("print days["+i+"];");
					System.out.println("python执行"+"print days["+i+"];");
					System.out.println(i+"暂停2秒;消耗时间"+(System.currentTimeMillis()-fTime));
					try {
						Thread.sleep(2000);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}finally {
					}
				}
			}finally {
				long endtTime=System.currentTimeMillis();
				long eTime=endtTime-startTime;
				System.out.println("runCostTime:"+eTime);
				interpreter.close();
				long closetTime=System.currentTimeMillis();
				long cTime=closetTime-endtTime;
				System.out.println("closeCostTime:"+cTime);
			}
	}
}