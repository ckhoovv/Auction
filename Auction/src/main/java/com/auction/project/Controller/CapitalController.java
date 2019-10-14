package com.auction.project.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.auction.project.DTO.N_proDTO;

@Controller
public class CapitalController {
	//@Autowired
	
//	@RequestMapping("capital.do")
//	public ModelAndView capital() {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("/capital");
//		return mv;
//	}

	@RequestMapping("capital.do")
	public String capital() {
		return "capital";
	}
	
	@RequestMapping("capitalApply.do")
	public String capitalApply() {
		return "capitalApply";
	}
	
	@RequestMapping("capitalResult.do")
	public String capitalResult() {
		return "capitalResult";
	}
	@RequestMapping("capitalChatbot.do")
	public String capitalChatbot() {
		return "capitalChatbot";
	}
	
}
