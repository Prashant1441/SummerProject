package testMain;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Manage.Dao.userDao;
import com.Manage.configuration.SpringRootConfig;
import com.Manage.domain.user;

public class testSave {
	
	public static void main(String[] args) {
		ApplicationContext ap=new AnnotationConfigApplicationContext(SpringRootConfig.class);
		userDao udao=ap.getBean(userDao.class);
		user u=new user();
		u.setName("tom");
		u.setAddress("japan");
		u.setEmail("tom@gmail.com");
		u.setLoginName("t");
		u.setPhone("9841555014");
		u.setPassword("1234");
		u.setRole(1);
		u.setLoginStatus(1);
		udao.save(u);
		System.out.println("---------------saved---------------");
		
		
		
		
	
	}

}
