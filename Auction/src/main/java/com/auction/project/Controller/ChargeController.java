package com.auction.project.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.auction.project.DTO.ChargeDTO;
import com.auction.project.Service.ChargeService;
import com.auction.project.Service.DonationService;

@Controller
public class ChargeController {
	
	@Autowired
	ChargeService chargeservice;
	@Autowired
	DonationService donationService;
	
	
	@RequestMapping("charge_money.do")
	public void moneyAll(Model model) {
		model.addAttribute("moneyAll", chargeservice.moneyAll());
	}
	@RequestMapping("insert_money.do")
	public String insert_money(ChargeDTO chargeDTO, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		chargeservice.insert_money(chargeDTO);
		Model money = model.addAttribute("f_money", donationService.cal_dona_select(chargeDTO).getMoney());
		session.setAttribute("sessionMoney", money.asMap().get("f_money"));
		return"redirect:main.do";
	}
	/*
	 * @RequestMapping("top.do") public void member_money(ChargeDTO chargeDTO, Model
	 * model) { model.addAttribute("m_money",
	 * chargeservice.member_money(chargeDTO)); }
	 */
	
}
