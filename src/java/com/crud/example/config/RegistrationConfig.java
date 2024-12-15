package com.crud.example.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import java.sql.Connection;
import javax.sql.DataSource;
import java.sql.DriverManager;
import java.sql.SQLException;
import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.datasource.SingleConnectionDataSource;

@Configuration
public class RegistrationConfig {
    @Bean
    public JdbcTemplate getJdbcTemplate() throws SQLException{
        
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/njstep", "root", "krishi@154");
        DataSource dataSource = new SingleConnectionDataSource(connection, true);
        return new JdbcTemplate(dataSource);
    }
}
