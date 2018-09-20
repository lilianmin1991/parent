package com.gt.python;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class ExecutePy {

		//[静态内部类]型单例模式
	    private static class ProcessHolder{
	            public static ExecutePy executePy = new ExecutePy();
	    }
	    private ExecutePy(){}
	    public static ExecutePy getProcess(){
	        return ProcessHolder.executePy;
	    }
	    private static Runtime run = Runtime.getRuntime();
	   	public String[] pyGetAnswer(String question) {
	        // TODO Auto-generated method stub
	        Process proc;
	        String answer = "";
	        String errMess = "";
	        String[] arr = new String[2];
	        
	        try {
	        	String[] args;
	        	if(null != question && question.startsWith("test")){
	        		//Linux系统
	        		args = new String[] {"python3","/home/pythonFiles/qa/test.py","--question="+String.valueOf(question.replaceFirst("test", ""))};
	        	}else {
	        		args = new String[] {"python3","/home/pythonFiles/qa/predict.py","--question="+String.valueOf(question)};
	        	}
	        	if(null != question && question.startsWith("wintest")){
	        		//windows系统
	        		args = new String[] {"python","C:\\Users\\Admin\\Desktop\\test.py","--question="+String.valueOf(question.replaceFirst("wintest", ""))};
	        	}else if(null != question && question.startsWith("win")){
	        		args = new String[] {"python","C:\\Users\\Admin\\Desktop\\predict.py","--question="+String.valueOf(question.replaceFirst("win", ""))};
	        	}
	            
	        	proc = run.exec(args);// 执行py文件
	            //用输入输出流来截取结果
	            BufferedReader result = new BufferedReader(new InputStreamReader(proc.getInputStream(),"UTF-8"));
	            BufferedReader err = new BufferedReader(new InputStreamReader(proc.getErrorStream(),"UTF-8"));
	            String line;
	            String errline;
	            while ((line = result.readLine()) != null) {
	                System.out.println(line);
	                answer = answer + line;
	            }
	            while ((errline = err.readLine()) != null) {
	            	System.out.println(errline);
	            	errMess = errMess + errline;
	            }
	            result.close();
	            proc.waitFor();
	        } catch (IOException e) {
	            e.printStackTrace();
	        } catch (InterruptedException e) {
	            e.printStackTrace();
	        } 
	        arr[0] = answer;
	        arr[1] = errMess;
	        return arr;
	    }
}
