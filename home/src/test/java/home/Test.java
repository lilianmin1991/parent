package home;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Test {

	public static void main(String[] args) {
		String result = null;
		String type = "month";
		String num = "aaa";
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Calendar c = Calendar.getInstance();
		
		if(type.equals("day")){
			//按天计算
			c.setTime(new Date());
			c.add(Calendar.DATE, + 30*(Integer.valueOf(num)));
			Date d = c.getTime();
			result = format.format(d);
		}else if(type.equals("month")){
			//按月计算
			c.setTime(new Date());
			c.add(Calendar.MONTH, +1*(Integer.valueOf(num)));
			Date m = c.getTime();
			result = format.format(m);
		}else if(type.equals("year")){
			//按年计算
			c.setTime(new Date());
			c.add(Calendar.YEAR, +1*(Integer.valueOf(num)));
			Date y = c.getTime();
			result = format.format(y);
		}
		System.out.println(result);

	}

}
