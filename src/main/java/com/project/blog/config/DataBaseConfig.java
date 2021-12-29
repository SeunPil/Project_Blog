package com.project.blog.config;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

@Configuration
@ComponentScan(basePackages = "com.project.blog")
public class DataBaseConfig {

    //MVC 기본 구조 패키지
    // controller, domain, repository, service

    //DB연결정보, 커넥션 풀 설정
    @Bean
    public DataSource dataSource() {
        HikariConfig Config = new HikariConfig();
        Config.setUsername("teamblog");
        Config.setPassword("1234");
        Config.setJdbcUrl("jdbc:oracle:thin:@localhost:1521:xe");
        Config.setDriverClassName("oracle.jdbc.driver.OracleDriver");

        return new HikariDataSource(Config);
    }
}
