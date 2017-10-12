package com.ldapauth.authprovider;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "com.ldapauth.authprovider")
public class AuthproviderApplication {

	public static void main(String[] args) {
		SpringApplication.run(AuthproviderApplication.class, args);
	}
}
