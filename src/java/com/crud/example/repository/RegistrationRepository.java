package com.crud.example.repository;

import com.crud.example.beans.RegistrationBean;
import java.util.List;

public interface RegistrationRepository {
    public int insertData(RegistrationBean registrationBean);
    public List loadData(RegistrationBean registrationBean);
    public int updatedData(RegistrationBean registrationBean);
}
