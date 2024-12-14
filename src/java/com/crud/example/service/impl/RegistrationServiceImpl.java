package com.crud.example.service.impl;

import com.crud.example.beans.RegistrationBean;
import com.crud.example.repository.RegistrationRepository;
import com.crud.example.service.RegistrationService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegistrationServiceImpl implements RegistrationService{

    @Autowired
    RegistrationRepository registrationRepository;
    
    @Override
    public int insertData(RegistrationBean registrationBean) {
        return registrationRepository.insertData(registrationBean);
    }

    @Override
    public List loadData(RegistrationBean registrationBean) {
        return registrationRepository.loadData(registrationBean);
    }

    @Override
    public int updatedData(RegistrationBean registrationBean) {
        return registrationRepository.updatedData(registrationBean);
    } 
}
