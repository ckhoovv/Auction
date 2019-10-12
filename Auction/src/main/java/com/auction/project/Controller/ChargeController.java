package com.auction.project.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.auction.project.DTO.ChargeDTO;
import com.auction.project.Service.ChargeService;

@Controller
public class ChargeController {
	
	@Autowired
	ChargeService chargeservice;
	
	@RequestMapping("charge_money.do")
	public void moneyAll(Model model) {
		model.addAttribute("moneyAll", chargeservice.moneyAll());
	}
	@RequestMapping("insert_money.do")
	public String insert_money(ChargeDTO chargeDTO) {
		chargeservice.insert_money(chargeDTO);
		return"redirect:main.do";
	}
	@RequestMapping("top.do")
	public void member_money(ChargeDTO chargeDTO, Model model) {
		model.addAttribute("m_money", chargeservice.member_money(chargeDTO));
	}
	
}
