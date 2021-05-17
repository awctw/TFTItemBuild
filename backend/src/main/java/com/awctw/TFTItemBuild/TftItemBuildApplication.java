package com.awctw.TFTItemBuild;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.io.IOException;

@MapperScan("com.awctw.TFTItemBuild")
@SpringBootApplication
public class TftItemBuildApplication {


	public static void main(String[] args) throws IOException {
		SpringApplication.run(TftItemBuildApplication.class, args);
	}

}
