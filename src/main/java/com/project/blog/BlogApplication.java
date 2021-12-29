package com.project.blog;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@SpringBootApplication
@ServletComponentScan
public class BlogApplication {

	//뷰 리졸버 설정: 컨트롤러가 리턴한 문자열을 해석해주는 객체
	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();

		//경로 설정에 공통적인 경로 접두사
		resolver.setPrefix("/WEB-INF/views/");
		//경로 마지막에 공통적으로 들어갈 접미사
		resolver.setSuffix(".jsp");

		return resolver;
	}

	public static void main(String[] args) {
		SpringApplication.run(BlogApplication.class, args);
	}

}