package testMain;


import javax.sql.DataSource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

import com.Manage.configuration.SpringRootConfig;

public class test {
	
	public static void main(String[] args) {
		ApplicationContext ap= new AnnotationConfigApplicationContext(SpringRootConfig.class);
		DataSource ds=ap.getBean(DataSource.class);
		JdbcTemplate jt=new JdbcTemplate(ds);
		String sql="INSERT INTO user  (`name`, `phone`, `email`, `loginName`, `password`, `address`) VALUES(?,?,?,?,?,?)";
		 Object [] ob=new Object [] {"prashant","9749421105","prashant@gmail.com","p","9841","boudha"};
		 jt.update(sql,ob);
		 System.out.println("----------------okay-------------------");
		
	
	
	}

}
