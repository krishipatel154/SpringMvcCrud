package com.crud.example.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.SingleConnectionDataSource;

@Configuration
public class AppConfigration {
    @Bean
    public JdbcTemplate getJdbcTemplate() throws SQLException{
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/njstep", "root", "krishi@154");
        DataSource dataSource = new SingleConnectionDataSource(connection, true);
        return new JdbcTemplate(dataSource);
    }
}
