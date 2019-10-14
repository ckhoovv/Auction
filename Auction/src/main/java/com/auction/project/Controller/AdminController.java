package com.auction.project.Controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.auction.project.DAO.A_productDAO;
import com.auction.project.DAO.Admin_memberDAO;
import com.auction.project.DAO.Fix_recordDAO;
import com.auction.project.DTO.A_productDTO;
import com.auction.project.DTO.AddressDTO;
import com.auction.project.DTO.Fix_recordDTO;
import com.auction.project.DTO.MemberDTO;

@Controller
public class AdminController {
	@Autowired
	Admin_memberDAO amDAO;
	
	@Autowired
	A_productDAO a_productDAO;
	
	@Autowired
	Fix_recordDAO fix_recordDAO;
	 
	@RequestMapping("admin_main.do")
	public ModelAndView admin_main() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin_main"); // 이동하고자 하는 페이지의 명을 기입
		return mv;
	}
	
	@RequestMapping("admin_member.do")
	public ModelAndView admin_member() {
		ModelAndView mv = new ModelAndView();
		List<MemberDTO> list = amDAO.selectAll();
	     
		mv.addObject("memberList", list);
		
		mv.setViewName("admin_member");
		return mv;
	}
	
	@RequestMapping("admin_member_delete.do")
	@ResponseBody
	public String admin_member_delete(HttpServletRequest req, HttpServletResponse response) {
		MemberDTO memberDTO = new MemberDTO();
		String result = "NG";
		
		memberDTO.setEmail(req.getParameter("email"));
		
		if(amDAO.delete(memberDTO) > 0) {
			result = "OK";
		};
		
		return result;
	}
	
	@RequestMapping("admin_address_update_pop.do")
	public ModelAndView admin_address_update_pop(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		AddressDTO addressDTO = new AddressDTO();
		
		addressDTO.setMember_email(req.getParameter("email"));

		List<AddressDTO> list = amDAO.selectAddressAll(addressDTO);
		
		mv.addObject("email",req.getParameter("email"));
		mv.addObject("addressList", list);
		
		mv.setViewName("admin_address_update_pop");
		
		return mv;
	}
	
	
	@RequestMapping("admin_member_update.do")
	public ModelAndView admin_member_update(AddressDTO addressDTO, HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		amDAO.updateAddress(addressDTO);
		
		mv.setViewName("admin_address_update");
		return mv;
	}
	
	//경매
	@RequestMapping("admin_apro_list.do")
	public ModelAndView admin_apro_list() {
		ModelAndView mv = new ModelAndView();
		
		List<A_productDTO> list = a_productDAO.selectAll();
		mv.addObject("aproList", list);
		
		mv.setViewName("admin_apro_list");
		return mv;
	}
	
	@RequestMapping("admin_report_list.do")
	public ModelAndView admin_report_list() {
		ModelAndView mv = new ModelAndView();
		
		List<A_productDTO> alist = a_productDAO.selectAll();
		mv.addObject("aproList", alist);
		mv.setViewName("admin_report_list");
		return mv;
	}
	
	//경매낙찰물품
	@RequestMapping("admin_fix_record_list.do")
	public ModelAndView fix_record_list() {
		ModelAndView mv = new ModelAndView();
		
		List<Fix_recordDTO> list = fix_recordDAO.selectAll();
		mv.addObject("frecordList", list);
		
		mv.setViewName("admin_fix_record_list");
		return mv;
	}

}
