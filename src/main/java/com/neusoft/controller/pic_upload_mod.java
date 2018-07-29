package com.neusoft.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
@Controller
@RequestMapping("/uppic") 
public class pic_upload_mod {
	String path_or="D:\\practice\\noobweb\\noobweb\\src\\main\\webapp\\images\\"; //根据自己的电脑路径设置
	@RequestMapping("/pic") 
	public String uploadPic(MultipartFile pic) throws IllegalStateException, IOException{
		String rndFileName = UUID.randomUUID().toString();
		String originalFilename = pic.getOriginalFilename();
		String ext =originalFilename.substring(originalFilename.lastIndexOf("."),originalFilename.length());
		String path = path_or+rndFileName+ext;
		File dest = new File(path);
		pic.transferTo(dest);
		System.out.println("图片于"+path);
				//System.out.println(pic.getOriginalFilename());
		return "";
	}
}
 