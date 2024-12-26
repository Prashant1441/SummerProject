package com.Manage.configuration;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;


@Configuration
@ComponentScan(basePackages={"com.Manage"})
public class SpringRootConfig {
	
	@Bean
	
		public BasicDataSource getDataSource() {
			BasicDataSource ds= new BasicDataSource();
			ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
			ds.setUrl("jdbc:mysql://localhost:3306/flight_db");
			ds.setUsername("root");
			ds.setPassword("9841");
			ds.setMaxTotal(2);
			ds.setInitialSize(1);
			ds.setTestOnBorrow(true);
			ds.setValidationQuery("SELECT 1");
			ds.setDefaultAutoCommit(true);
			return ds;
			
			}

}
