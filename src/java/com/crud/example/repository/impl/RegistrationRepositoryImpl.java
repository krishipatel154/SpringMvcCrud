package com.crud.example.repository.impl;

import com.crud.example.beans.RegistrationBean;
import com.crud.example.repository.RegistrationRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class RegistrationRepositoryImpl implements RegistrationRepository{

    @Autowired
    JdbcTemplate jdbcTemplate;
    
    @Override
    public int insertData(RegistrationBean registrationBean) {
//        return jdbcTemplate.update("insert into user(fname, lname, uname, email, password) values ('"+registrationBean.getFname()+"','"+registrationBean.getLname()+"','"+registrationBean.getUname()+"','"+registrationBean.getEmail()+"','"+registrationBean.getPsw()+"');");
        String sql = "insert into user(fname, lname, uname, email, password) values(?,?,?,?,?); ";
        return jdbcTemplate.update(sql, registrationBean.getFname(), registrationBean.getLname(), registrationBean.getUname(), registrationBean.getEmail(), registrationBean.getPsw());
    }    

    @Override
    public List loadData(RegistrationBean registrationBean) {
        String sql = "select * from user where email=? && password=?";
        return jdbcTemplate.queryForList(sql, registrationBean.getEmail(), registrationBean.getPsw());
    }
    
}
