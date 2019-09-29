package com.auction.project.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	
}