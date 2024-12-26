package testMain;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Manage.Dao.flightDao;
import com.Manage.configuration.SpringRootConfig;
import com.Manage.domain.flight;

public class testUpdateflight {

	public static void main(String[] args) {
		
		ApplicationContext ap=new
		  AnnotationConfigApplicationContext(SpringRootConfig.class); flightDao
		  fdao=ap.getBean(flightDao.class); flight f=new flight(); f.setFlightId(2);
		  f.setDestination("Bhartpur to pokhara"); f.setFlightStatus(1);
		  f.setFlightType(2); f.setFlightClass("economy"); f.setTraveler(1);
		  f.setTimeIn("11:30"); fdao.update(f);
		  System.out.println("---------------update---------------");
		  
		 

		Object br[] = new Object[] { 12, 1, 2, 3, 4, 5 };

		System.out.println(toCommaSeperetedString(br));

	}

	public static String toCommaSeperetedString(Object[] items) {
		StringBuilder sb = new StringBuilder();
		for (Object item : items) {
			sb.append(item).append(",");

		}

		if (sb.length() > 0) {
			sb.deleteCharAt(sb.length() - 1);
		}
		return sb.toString();
	}

}
