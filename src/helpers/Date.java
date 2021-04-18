package helpers;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Date {
	public static String getTime() {
		   DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
		   LocalDateTime now = LocalDateTime.now();
		   System.out.println(dtf.format(now));
		   return dtf.format(now);
	}
}
