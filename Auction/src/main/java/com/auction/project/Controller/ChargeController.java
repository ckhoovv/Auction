package com.auction.project.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.auction.project.Service.ChargeService;

@Controller
public class ChargeController {
	
	@Autowired
	ChargeService chargeservice;
	
	@RequestMapping("charge_money.do")
	public String charge_money() {
		return "charge_money";
	}
}
