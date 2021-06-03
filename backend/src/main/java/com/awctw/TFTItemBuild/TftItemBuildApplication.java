package com.awctw.TFTItemBuild;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@MapperScan("com.awctw.TFTItemBuild")
@SpringBootApplication
@EnableScheduling
public class TftItemBuildApplication {


	public static void main(String[] args)  {
		SpringApplication.run(TftItemBuildApplication.class, args);
	}

}
