package com.crud.example.controller;

import com.crud.example.beans.RegistrationBean;
import com.crud.example.service.RegistrationService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import static org.springframework.util.CollectionUtils.isEmpty;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegistrationController {
    
    @Autowired
    RegistrationService registrationService;
    
    @RequestMapping("index.htm")
    public String index(){
        return "index";
    }
    @RequestMapping(value="index.htm", params="loadPage=loadSignUpPage")
    public ModelAndView registration(){
        ModelAndView mv = new ModelAndView("registration");
        return mv;
    }
    @RequestMapping(value="index.htm", params="loadPage=loadInsertData")
    public ModelAndView insertData(RegistrationBean registrationBean){
        ModelAndView mv = new ModelAndView("login");
        mv.addObject("row",registrationService.insertData(registrationBean));
        return mv;
    }
    @RequestMapping(value="index.htm", params="loadPage=loadSignInPage")
    public ModelAndView loadSignInPage(){
        ModelAndView mv = new ModelAndView("login");
        return mv;
    }
    @RequestMapping(value="index.htm", params="loadPage=loadLoginPage")
    public ModelAndView loadLogin(RegistrationBean registrationBean){
        ModelAndView mv = new ModelAndView();
          List data = registrationService.loadData(registrationBean);
          if(isEmpty(data)){
                mv.setViewName("login");
                mv.addObject("process", "error");
          }else{
            mv.addObject("data",data);
            mv.setViewName("profile");
          }
        return mv;
    }
}
