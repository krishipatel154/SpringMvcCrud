package com.crud.example.service;

import com.crud.example.beans.RegistrationBean;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public interface RegistrationService {
    public int insertData(RegistrationBean registrationBean);
    public List loadData(RegistrationBean registrationBean);
    
}
