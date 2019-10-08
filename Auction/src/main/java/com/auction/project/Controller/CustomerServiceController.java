package com.auction.project.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.auction.project.DTO.CServiceDTO;
import com.auction.project.DTO.SignUpDTO;
import com.auction.project.Service.CServiceService;

@Controller
public class CustomerServiceController {

	@Autowired
	CServiceService cserviceService;
	
	@RequestMapping("customer_service.do")
	public void customer_service(Model model) {
		model.addAttribute("list", cserviceService.selectAll());
	}
	
	@RequestMapping("admin_customer_service.do")
	public void admin_customer_service(Model model) {
		model.addAttribute("list", cserviceService.selectAll());
	}
	
	
	//고객 센터 추가 수정 삭제
	@RequestMapping("cs_addPopup.do")
	public String cs_addPopup() {
		
		return "popUp/cs_addPopup";
	}
	
	@RequestMapping("cs_updatePopup.do")
	public String cs_updatePopup() {
		
		return "popUp/cs_updatePopup";
	}
	
	@RequestMapping("cs_deletePopup.do")
	public String cs_deletePopup() {
		
		return "popUp/cs_deletePopup";
	}
	
	@RequestMapping("insert_popup.do")
	public String insert_popup(CServiceDTO cserviceDTO) {
		cserviceService.cs_insert(cserviceDTO);
		return "admin_customer_service";
	}
	
	@RequestMapping("delete_popup.do")
	public void delete_popup(CServiceDTO cserviceDTO) {
		cserviceService.cs_delete(cserviceDTO);
		System.out.println(cserviceDTO.getId());
	}
	
//	@RequestMapping("delete_popup.do")
//	public String delete_popup(CServiceDTO cserviceDTO) {
//		cserviceService.cs_delete(cserviceDTO);
//		return "admin_customer_service";
//	}
}
