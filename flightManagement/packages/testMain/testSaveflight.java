package testMain;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Manage.Dao.flightDao;
import com.Manage.configuration.SpringRootConfig;
import com.Manage.domain.flight;

public class testSaveflight {
	
	public static void main(String[] args) {
		ApplicationContext ap=new AnnotationConfigApplicationContext(SpringRootConfig.class);
		flightDao fdao=ap.getBean(flightDao.class);
		flight f=new flight();
		f.setUserId(1);
		f.setDestination("pokhara to bhartpur");
		f.setFlightStatus(1);
		f.setFlightType(2);
		f.setFlightClass("business");
		f.setTimeIn("12:30");
		f.setTraveler(1);
		fdao.save(f);
		System.out.println("---------------saved---------------");
		

		
		
	
	}

}
