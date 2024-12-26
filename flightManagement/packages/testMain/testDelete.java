package testMain;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Manage.Dao.flightDao;
import com.Manage.configuration.SpringRootConfig;
import com.Manage.domain.flight;

public class testDelete {
	
	public static void main(String[] args) {
		ApplicationContext ap=new AnnotationConfigApplicationContext(SpringRootConfig.class);
		flightDao fdao=ap.getBean(flightDao.class);
		flight f=new flight();
		f.setFlightId(3);
		fdao.delete(f);
		System.out.println("---------------delete---------------");
		

		
		
	
	}

}
