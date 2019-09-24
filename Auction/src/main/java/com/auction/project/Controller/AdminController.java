package com.auction.project.Controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.auction.project.DAO.Admin_memberDAO;
import com.auction.project.DTO.AddressDTO;
import com.auction.project.DTO.MemberDTO;

@Controller
public class AdminController {
	@Autowired
	Admin_memberDAO amDAO;
	
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
	     
		mv.addObject("testWord", "9999"); // 원하는 값을 ("key", "Value") 형태로전달해서 jsp페이지에서는 ${key}로 사용
		mv.addObject("memberList", list);
		
		mv.setViewName("admin_member");
		return mv;
	}
	
	@RequestMapping("admin_member_delete.do")
	public ModelAndView admin_member_delete(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = new MemberDTO();
		
		memberDTO.setEmail(req.getParameter("email"));
		
		amDAO.delete(memberDTO);
		
		mv.setViewName("redirect:admin_member.do");
		return mv;
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
	public ModelAndView admin_member_update(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		
		AddressDTO addressDTO = new AddressDTO();
		
		addressDTO.setMember_email(req.getParameter("member_email"));
		addressDTO.setPlace(req.getParameter("place"));
		addressDTO.setAddr1(req.getParameter("addr1"));
		addressDTO.setAddr2(req.getParameter("addr2"));
		addressDTO.setAddr3(req.getParameter("addr3"));

		amDAO.updateAddress(addressDTO);
		
		mv.setViewName("admin_address_update");
		return mv;
	}
//	
//	@RequestMapping("admin_member_select.do")
//	public void admin_member_select(memberDTO mDTO, Model model) {
//		memberDTO mDTO = amDAO.select(mDTO);//혹시 memberDTO를 클래스로 인식을 못하나?
//		model.addAttribute("mDTO", mDTO);
//	
//	}
//	

}
