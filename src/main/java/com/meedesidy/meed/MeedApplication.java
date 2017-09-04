package com.meedesidy.meed;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@EnableEurekaServer
@SpringBootApplication
public class MeedApplication {

	public static void main(String[] args) {
		new SpringApplicationBuilder(MeedApplication.class).web(true).run(args);
	}
}
