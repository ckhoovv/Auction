package com.auction.project.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.auction.project.DAO.SignUpDAO;

@Controller
//@SessionAttributes({"sessionEmail"}) // 세션 생성
public class SessionController {

	@Autowired
	SignUpDAO signUpDAO;

	@RequestMapping("sessionLogin.do")
	public String sessionLogin(String email, String name, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String[] arr = email.split(",");
		
		session.setAttribute("sessionEmail", arr[0]);
		
		
		if(arr[0].equals("root")) {
			return "admin_main";
		} else {
			session.setAttribute("sessionName", arr[1]);
			return "main";
		}
	}

	@RequestMapping("sessionLogout.do")
	public String sessionLogout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.invalidate(); // 세션 삭제
		}
		return "main";
	}
}
