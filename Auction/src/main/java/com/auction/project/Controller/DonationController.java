package com.auction.project.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.auction.project.DTO.DonationDTO;
import com.auction.project.DTO.Donation_ListDTO;
import com.auction.project.Service.DonationService;

@Controller
public class DonationController {
	
	@Autowired
	DonationService donationService;
	
	@RequestMapping("/donation_main.do")
	public void selectAll(Model model) {
		model.addAttribute("count_list", donationService.count_list());
		model.addAttribute("list", donationService.selectAll());
	}
	@RequestMapping("donation_detail.do")
	public void select_donation(DonationDTO donationDTO,Donation_ListDTO donation_listDTO, Model model) {
		model.addAttribute("count", donationService.count_donation(donation_listDTO));
		model.addAttribute("dto", donationService.select_donation(donationDTO));
	}
}