package com.app.OnlineFIRsystem;

import java.io.File;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.app.OnlineFIRsystem.citizens.CitizenController;

@SpringBootApplication
public class CRSApplication {
	
	public static void main(String[] args) {
		new File(CitizenController.uploadDirectory).mkdir();
		SpringApplication.run(CRSApplication.class, args);
	}

}
