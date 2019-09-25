package com.auction.project.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.auction.project.DAO.DonationDAO;
import com.auction.project.DTO.DonationDTO;
import com.auction.project.Service.DonationService;

@Controller
public class DonationController {
	
	@Autowired
	DonationService donationService;
	
	@RequestMapping("/donation_main.do")
	public void selectAll(Model model) {
		
		model.addAttribute("list", donationService.selectAll());
	}
	
	@RequestMapping("donation_detail.do")
	public String detail() {
		return "donation_detail";
	}
}
