package com.auction.project.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.auction.project.DTO.SignUpDTO;
import com.auction.project.Service.SignUpService;

@Controller
public class SignController {

	@Autowired
	SignUpService signUpService; // service �뿰寃�

	@RequestMapping("signIn.do")
	public void signIn() {
	}
	
	@RequestMapping("doLogin.do")
	public String doLogin(SignUpDTO signUpDTO, Model model) {
		
		model.addAttribute("sdto", signUpService.doLogin(signUpDTO));
		return "login_check";
	}
	
	@RequestMapping("admin_doLogin.do")
	public String admin_doLogin(SignUpDTO signUpDTO, Model model) {
		model.addAttribute("a_sdto", signUpService.admin_doLogin(signUpDTO));
		return "admin_login_check";
	}

	@RequestMapping("signUp.do")
	public void signUp_insert() {
		
	}
	
	@RequestMapping("signUp_result.do")
	public void signUp(SignUpDTO signUpDTO, Model model) {
		signUpService.SignUp_insert(signUpDTO);
		model.addAttribute("selectsdto", signUpService.signUp_select(signUpDTO));
	}
}
