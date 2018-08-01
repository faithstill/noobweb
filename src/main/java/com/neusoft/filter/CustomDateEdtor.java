package com.neusoft.filter;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.support.WebBindingInitializer;
import org.springframework.web.context.request.WebRequest;

public class CustomDateEdtor implements WebBindingInitializer {

    
    public void initBinder(WebDataBinder binder, WebRequest request) {
        // TODO Auto-generated method stub
        //转换日期格式
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

}
