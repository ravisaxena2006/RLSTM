package com.techm;

import java.io.File;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.techm.controller.ProjectCostsController;



@SpringBootApplication
public class TechmRlsAutomationApplication {

	public static void main(String[] args) {
		new File(ProjectCostsController.uploadDirectory).mkdir();
		SpringApplication.run(TechmRlsAutomationApplication.class, args);
	}

}
