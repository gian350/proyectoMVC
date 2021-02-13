package com.unmsm.proyectoMVC;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;

@SpringBootApplication
@ComponentScan("com.gcru")
public class ProyectoMvcApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProyectoMvcApplication.class, args);
	}

}
