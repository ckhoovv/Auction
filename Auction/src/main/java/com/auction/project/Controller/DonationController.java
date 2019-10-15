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
		int coupon = (int) Math.floor(donation_listDTO.getDona_money() * 0.01);
		chargeDTO.setCoupon(coupon);
		donationService.cal_chardona(chargeDTO);
		Model money = model.addAttribute("f_money", donationService.cal_dona_select(chargeDTO).getMoney());
		session.setAttribute("sessionMoney", money.asMap().get("f_money"));
		return"redirect:donation_detail.do?dona_num="+donation_listDTO.getDona_num();
	}
	
	
	
	
	/* 관리자 기부 관련 */
	@RequestMapping("admin_donation.do")
	public void dona_list(DonationDTO donationDTO, Model model) {
		
		model.addAttribute("dona_list", donationService.dona_list());
	}
	@RequestMapping("delete_donation.do")
	public String dona_delete(DonationDTO donationDTO, Model model) {
		model.addAttribute("dona_delete", donationService.dona_delete(donationDTO));
		
		return "redirect:admin_donation.do";
	}
	@RequestMapping("admin_donation_update.do")
	public void admin_update() {
		
	}@RequestMapping("admin_donation_insert.do")
	public void admin_insert() {
		
	}
	
	@RequestMapping("donation_update.do")
	public String dona_update(DonationDTO donationDTO,Model model) {
		model.addAttribute("dona_update", donationService.dona_update(donationDTO));
		return "redirect:admin_donation.do";
	}
	@RequestMapping("donation_insert.do")
	public String dona_insert(DonationDTO donationDTO) {
		donationService.dona_insert(donationDTO);
		return "redirect:admin_donation.do";
	}

	
	
	
}