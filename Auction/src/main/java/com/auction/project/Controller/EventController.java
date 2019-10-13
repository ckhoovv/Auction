package com.auction.project.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.auction.project.DTO.ChargeDTO;
import com.auction.project.DTO.E_ListDTO;
import com.auction.project.DTO.E_WinnerDTO;
import com.auction.project.Service.E_MainService;

@Controller
public class EventController {

	@Autowired
	E_MainService e_mainservice;

	@RequestMapping("event_main.do")
	public void e_mainAll(E_ListDTO e_listDTO, ChargeDTO chargeDTO, Model model) {
		model.addAttribute("e_main", e_mainservice.e_mainAll());

		chargeDTO.setMember_email("naver");
		model.addAttribute("coupon", e_mainservice.list_insert(chargeDTO));
	}

	@RequestMapping("list_insert.do")
	public String list_insert(E_ListDTO e_listDTO, ChargeDTO chargeDTO, Model model) {
		e_mainservice.list_insert(e_listDTO);
		System.out.println(chargeDTO.getCoupon());
		chargeDTO.setMember_email(e_listDTO.getMember_email());
		model.addAttribute("coupon", e_mainservice.list_insert(chargeDTO));
		return "redirect:event_main.do";
	}

	@RequestMapping("popup.do")
	public void winnerAll(Model model) {
		model.addAttribute("winnerAll", e_mainservice.winnerAll());
	}

	/* 愿�由ъ옄 �쓳紐④��젴 */

	@RequestMapping("admin_event.do")
	public void admin_winnerAll(Model model) {
		model.addAttribute("winnerAll", e_mainservice.winnerAll());
		model.addAttribute("e_main", e_mainservice.e_mainAll());
	}

	@RequestMapping("winner_insert.do")
	public String insert_winner(E_WinnerDTO e_winnerDTO) {
		e_mainservice.insert_winner(e_winnerDTO);
		return "redirect:admin_event.do";
	}

}
