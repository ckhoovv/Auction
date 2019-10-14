package com.auction.project.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.auction.project.DTO.SignUpDTO;
import com.auction.project.Service.SignUpService;

@Controller
public class MyPageController {

	@Autowired
	SignUpService signUpService;
	
	@RequestMapping("myPage.do")
	public void myPage() {
		
	}

	@RequestMapping("myPage_member_update.do")
	public String myPage_member_update(SignUpDTO signUpDTO, Model model) {
		
		return "myPage_member_update.do";
	}
}
