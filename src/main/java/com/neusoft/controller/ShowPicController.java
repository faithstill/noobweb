package com.neusoft.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * <p><b>Project:</b>  		《springmvc04》</p>
 * <p><b>Title:</b>   		ShowPicController</p>
 * <p><b>Description:</b> 	Description  </p>
 * <p><b>Company:</b>		www.neusoft.com.cn </p>
 * <p><b>Site:</b>			http://314649444.iteye.com/  </p>
 * 
 * @date 2018-7-24   下午5:27:29
 * @author 东软，张金山
 */
@Controller
public class ShowPicController {

	
	
	//http://127.0.0.1/springmvc/show?userid=0001
	@RequestMapping("/show")
	public void show(String userid,HttpServletResponse response) throws IOException{
		//通过Userid 查询 对应的 图片路径
		String path ="D:\\upload\\c79e2fde-7c29-43eb-a569-68965c4e0fe9.png";
		
		FileInputStream fis = new FileInputStream(new File(path));
		
		ServletOutputStream os = response.getOutputStream();
		
		byte[] bts = new byte[1024];
		int len = -1;
		while(   (len =fis.read(bts)) != -1){
			os.write(bts,0,len);
		}
		os.flush();
		os.close();
	}
	
}
