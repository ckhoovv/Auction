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
	SignUpService signUpService; // 로그인 DAO

	@RequestMapping("signIn.do")
	public void signIn() {
	}
	
	@RequestMapping("doLogin.do")
	public void doLogin(SignUpDTO signUpDTO, Model model) {
		model.addAttribute("sdto", signUpService.doLogin(signUpDTO));
	}
	
//	@RequestMapping("doLogin.do")
//	public String doLogin(SignUpDTO signUpDTO, Model model) {
//		SignUpDTO memberloginDTO = signUpDAO.login_member(signUpDTO);
//		model.addAttribute("memberloginDTO", memberloginDTO);
//		return "login_check";
//	}


//	@RequestMapping("signUp.do")
//	public void signUp() {
//
//	}

	@RequestMapping("signUp.do")
	public void signUp_insert(SignUpDTO signUpDTO, Model model) {
		signUpService.SignUp_insert(signUpDTO);
		
		model.addAttribute("selectsdto", signUpService.signUp_select(signUpDTO));
	}
	
//	@RequestMapping("signUp.do")
//	public String signUp_insert(SignUpDTO signUpDTO, AddressDTO addressDTO, Model model) {
//		signUpDAO.insert_member(signUpDTO);
//		addressDTO.setMember_email(signUpDTO.getEmail());
//		addressDTO.setPlace("hoem");
//		addressDTO.setRecipient("choo");
//		signUpDAO.insert_address(signUpDTO);
//		
//		MemberDTO memberInsertDTO = signUpDAO.select_member(signUpDTO);
//		AddressDTO addressInsertDTO = signUpDAO.select_address(addressDTO);
//		model.addAttribute("memberInsertDTO", memberInsertDTO);
//		model.addAttribute("addressInsertDTO", addressInsertDTO);
//		
//		return "signUp_result";
//	}
}
