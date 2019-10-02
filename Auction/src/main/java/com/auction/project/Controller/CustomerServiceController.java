package com.auction.project.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.auction.project.Service.CServiceService;

@Controller
public class CustomerServiceController {

	@Autowired
	CServiceService cserviceService;
	
	@RequestMapping("customer_service.do")
	public void customer_service(Model model) {
		model.addAttribute("list", cserviceService.selectAll());
	}
}
