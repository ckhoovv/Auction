package com.auction.project.Controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.auction.project.DTO.ChargeDTO;
import com.auction.project.DTO.DonationDTO;
import com.auction.project.DTO.Donation_ListDTO;
import com.auction.project.Service.DonationService;

@Controller
public class DonationController {
	
	@Autowired
	DonationService donationService;
	
	@RequestMapping("/donation_main.do")
	public void selectAll(Donation_ListDTO donation_listDTO, Model model) {
		model.addAttribute("count_all", donationService.count_all(donation_listDTO));
		model.addAttribute("list", donationService.selectAll());
	}
	@RequestMapping("donation_detail.do")
	public void select_donation(DonationDTO donationDTO,Donation_ListDTO donation_listDTO, Model model) {
		model.addAttribute("count", donationService.count_donation(donation_listDTO));
		model.addAttribute("dto", donationService.select_donation(donationDTO));
	}
	
	@RequestMapping("cal_dona.do")
	public String cal_dona(Donation_ListDTO donation_listDTO,ChargeDTO chargeDTO, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		donationService.cal_dona(donation_listDTO);
		chargeDTO.setMoney(donation_listDTO.getDona_money());
		donationService.cal_chardona(chargeDTO);
		Model a = model.addAttribute("f_money", donationService.cal_dona_select(chargeDTO).getMoney());
		session.setAttribute("sessionMoney", a.asMap().get("f_money"));
		return"redirect:donation_detail.do?dona_num="+donation_listDTO.getDona_num();
	}
}