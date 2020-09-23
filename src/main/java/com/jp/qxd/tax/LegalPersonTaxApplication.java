package com.jp.qxd.tax;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableScheduling
@EnableTransactionManagement
@MapperScan("com.jp.qxd.tax.mapper")
public class LegalPersonTaxApplication {

	public static void main(String[] args) {
		SpringApplication.run(LegalPersonTaxApplication.class, args);
	}

}
