package com.auction.project.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.auction.project.DTO.Donation_ListDTO;
import com.auction.project.DTO.E_ListDTO;
import com.auction.project.DTO.E_WinnerDTO;
import com.auction.project.DTO.SignUpDTO;
import com.auction.project.Service.MyPageService;
import com.auction.project.Service.SignUpService;

@Controller
public class MyPageController {

	@Autowired
	SignUpService signUpService;
	@Autowired
	MyPageService mypageService;
	
	@RequestMapping("myPage.do")
	public void myPage(Donation_ListDTO donation_listDTO,E_ListDTO e_listDTO,E_WinnerDTO e_winnerDTO, SignUpDTO signUpDTO, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("sessionEmail");
		donation_listDTO.setMember_email(email);
		model.addAttribute("my_list", mypageService.myPage(donation_listDTO));
		
		e_listDTO.setMember_email(email);
		model.addAttribute("my_e_list", mypageService.e_myPage(e_listDTO));
		
		e_winnerDTO.setMember_email(email);
		model.addAttribute("my_w_list", mypageService.w_myPage(e_winnerDTO));
		
		signUpDTO.setEmail(email);
		model.addAttribute("my_m_select", mypageService.myPage_member_select(signUpDTO));
	}

	@RequestMapping("myPage_member_info_update.do")
	public String myPage_member_info_update(SignUpDTO signUpDTO, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("sessionEmail");
		signUpDTO.setEmail(email);
		
		mypageService.myPage_member_info_update(signUpDTO);
		model.addAttribute("my_m_select", mypageService.myPage_member_select(signUpDTO));
		System.out.println("myPage_member_info_update");
		
		return "myPage_member_info_update";
	}
	
	@RequestMapping("myPage_member_password_select.do")
	public void myPage_member_password_select(SignUpDTO signUpDTO, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("sessionEmail");
		signUpDTO.setEmail(email);
		
		model.addAttribute("my_m_select", mypageService.myPage_member_select(signUpDTO));
	}
	
	@RequestMapping("myPage_member_password_update.do")
	public void myPage_member_password_update(SignUpDTO signUpDTO, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("sessionEmail");
		signUpDTO.setEmail(email);
		
		mypageService.myPage_member_password_update(signUpDTO);
	}

//	@RequestMapping("myPage_member_info_update.do")
//	public void myPage_member_info_update(SignUpDTO signUpDTO, Model model) {
//		
//	}
	
	@RequestMapping("myPage_member_select.do")
	public String myPage_member_select(SignUpDTO signUpDTO, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("sessionEmail");
		signUpDTO.setEmail(email);
		
		Model pass_model = model.addAttribute("my_m_select", mypageService.myPage_member_select(signUpDTO).getPw());
		String pass = (String) pass_model.asMap().get("my_m_select");
		if(signUpDTO.getPw().equals(pass)) {
			return "myPage_member_select.do";
		} else {
			return "myPage.do";
		}
		
	}
}
