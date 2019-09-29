package com.auction.project.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.auction.project.DAO.SignUpDAO;

@Controller
@SessionAttributes({"sessionEmail"}) // 세션 생성
public class SessionController {

   @Autowired
   SignUpDAO signUpDAO;
   
   @RequestMapping("sessionLogin.do")
   public String sessionLogin(String email, Model model) {   
      model.addAttribute("sessionEmail", email);
      
      return "main";
   }
   
   @RequestMapping("sessionLogout.do")
   public String sessionLogout(SessionStatus sessionStatus) {   
      sessionStatus.setComplete(); // 세션 삭제
      
      return "main";
   }
}