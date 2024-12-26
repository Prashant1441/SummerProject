package com.jwt.congfig;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.servlet.configuration.WebMvcSecurityConfiguration;

@Configuration
@EnableWebSecurity
public class MySecurity  extends WebMvcSecurityConfiguration {

}
