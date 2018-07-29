package com.neusoft.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.domain.Product;
import com.neusoft.servce.ProductService;
import com.neusoft.servce.SearchService;

@Controller
@RequestMapping("/Search") 
public class SearchController {
	@Autowired
	SearchService SearchService;
		
	@RequestMapping("/show")
	public String ShowSearch(HttpServletRequest request,HttpServletResponse rp) throws IOException{
		
		String search_num=request.getParameter("num");
		String search_key = request.getParameter("key");
		if (search_num == "1"){
		//	SearchService.
		}
		return "/home/introduction.jsp";
	}
	@RequestMapping("/bytype")
	public String querybytype(HttpServletRequest request,HttpServletResponse rp){
		return null;
	}
}
