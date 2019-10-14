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

import com.auction.project.DAO.A_proDAO;
import com.auction.project.DAO.A_productDAO;
import com.auction.project.DAO.Admin_memberDAO;
import com.auction.project.DAO.Fix_recordDAO;
import com.auction.project.DAO.N_proDAO;
import com.auction.project.DTO.A_proDTO;
import com.auction.project.DTO.A_productDTO;
import com.auction.project.DTO.AddressDTO;
import com.auction.project.DTO.Fix_recordDTO;
import com.auction.project.DTO.MemberDTO;
import com.auction.project.DTO.N_proDTO;

@Controller
public class AdminController {
	@Autowired
	Admin_memberDAO amDAO;
	
	@Autowired
	N_proDAO nproDAO;
	
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
	//중고 
	@RequestMapping("admin_npro_list.do")
	public ModelAndView admin_npro_list() {
		ModelAndView mv = new ModelAndView();
		
		List<N_proDTO> list = nproDAO.selectAll();
		mv.addObject("nproList", list);
		
		mv.setViewName("admin_npro_list");
		return mv;
	}
	
	@RequestMapping("admin_npro_delete.do")
	@ResponseBody
	public String admin_npro_delete(HttpServletRequest req, HttpServletResponse response) {
		N_proDTO nproDTO = new N_proDTO();
		String result = "NG";
		
		nproDTO.setN_pro_register(req.getParameter("email"));
		
		if(nproDAO.delete(nproDTO) > 0) {
			result = "OK";
		};
		
		return result;
	}
	
//	@RequestMapping("admin_main.do")
//	public ModelAndView admin_main() {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("admin_main"); // 이동하고자 하는 페이지의 명을 기입
//		return mv;
//	}
	
	//경매
	@RequestMapping("admin_apro_list.do")
	public ModelAndView admin_apro_list() {
		ModelAndView mv = new ModelAndView();
		
		List<A_productDTO> list = a_productDAO.selectAll();
		mv.addObject("aproList", list);
		
		mv.setViewName("admin_apro_list");
		return mv;
	}
//	
//	@RequestMapping("admin_apro_delete.do")
//	@ResponseBody
//	public String admin_apro_delete(HttpServletRequest req, HttpServletResponse response) {
//		A_proDTO aproDTO = new A_proDTO();
//		String result = "NG";
//		
//		aproDTO.setA_pro_register(req.getParameter("email"));
//		
//		if(aproDAO.delete(aproDTO) > 0) {
//			result = "OK";
//		};
//		
//		return result;
//	}
	
	@RequestMapping("admin_report_list.do")
	public ModelAndView admin_report_list() {
		ModelAndView mv = new ModelAndView();
		
		List<A_productDTO> alist = a_productDAO.selectAll();
		mv.addObject("aproList", alist);
		
		List<N_proDTO> nlist = nproDAO.selectAll();
		mv.addObject("nproList", nlist);
		
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
	

	
	
//	@RequestMapping("signUp_insert.do")
//	public String signUp_insert(MemberDTO memberDTO, AddressDTO addressDTO, Model model) {
//		suiDAO.insert_member(memberDTO);
//		addressDTO.setMember_email(memberDTO.getEmail());
//		addressDTO.setPlace("hoem");
//		addressDTO.setRecipient("choo");
//		suiDAO.insert_address(addressDTO);
//		
//		MemberDTO memberInsertDTO = suiDAO.select_member(memberDTO);
//		/* AddressDTO addressInsertDTO = suiDAO.select_address(addressDTO); */
//		model.addAttribute("memberInsertDTO", memberInsertDTO);
//		/* model.addAttribute("addressInsertDTO", addressInsertDTO); */
//		
//		return "signUp_result";
	
	
	
	
	
//	@RequestMapping("admin_member_select.do")
//	public void admin_member_select(MemberDTO memberDTO, Model model) {
//		memberDTO = amDAO.select(memberDTO);
//		model.addAttribute("mDTO", memberDTO);
//	        
//	}
	
//	@RequestMapping("경매.do")
//	public ModelAndView admin_member_selecㄴㄴㄴt(HttpServletRequest req) {
//		ModelAndView mv = new ModelAndView();
//		MemeberAuthorityDTO memeberAuthorityDTO = new MemeberAuthorityDTO();
//		
//		memeberAuthorityDTO.setEmail(req.getParameter("email"));
//
//		String auth = mauthDAO.select(memeberAuthorityDTO);
//		
//		mv.addObject("auth", auth);
//		
//		mv.setViewName("admin_member");
//		return mv;
//	        
//	}
//	public void aaaa(){	
//		MemberDTO memberDTO = amDAO.select(memberDTO);
//		memberDTO.setStack(memberDTO.getStack() +1 );
//		if(memberDTO.getStack() >= 3) {
//			memberDTO.setIllegal("Y");
//			amDAO.updateIllegalMember(memberDTO); // 해당 아이디의 스택을 1 증가시키면서 일리걸 컬럼을 Y로 업데이트, 
//												  // UPDATE member SET stack = ${stack}, illegal = ${illegal} WHERE id = ${id}
//		} else {
//			amDAO.updateMemberStack(memberDTO); // 해당 아이디의 스택을 1 증가로 업데이트
//												// UPDATE member SET  stack = ${stack} WHERE id = ${id}
//		}
//			
//		
//	}

}
