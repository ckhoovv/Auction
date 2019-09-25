package com.auction.project.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.auction.project.DAO.SignUpInsertDAO;
import com.auction.project.DTO.MemberDTO;


@Controller
@SessionAttributes({"sessionId","sessionName","sessionTel"}) // 세션 생성
public class SessionController {

   @Autowired
   SignUpInsertDAO signUpInsertDAO;
   
   @RequestMapping("sessionLogin.do")
   public String sessionLogin(MemberDTO memberDTO, Model model) {   
      memberDTO = signUpInsertDAO.select_member(memberDTO);
      model.addAttribute("sessionId", memberDTO.getEmail());
      model.addAttribute("sessionName", memberDTO.getName());
      model.addAttribute("sessionTel", memberDTO.getTel());
      
      return "home/index";
   }
   
   @RequestMapping("sessionLogout.do")
   public String sessionLogout(SessionStatus sessionStatus) {   
      sessionStatus.setComplete(); // 세션 삭제
      
      return "home/index";
   }
}