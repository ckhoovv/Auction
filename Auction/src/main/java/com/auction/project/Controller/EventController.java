package com.auction.project.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.auction.project.DTO.E_ListDTO;
import com.auction.project.Service.E_MainService;

@Controller
public class EventController {
	
	@Autowired
	E_MainService e_mainservice;
	
	@RequestMapping("event_main.do")
	public void e_mainAll(E_ListDTO e_listDTO, Model model) {
		model.addAttribute("e_main", e_mainservice.e_mainAll());
	}
	@RequestMapping("list_insert.do")
	public String list_insert(E_ListDTO e_listDTO) {
		e_mainservice.list_insert(e_listDTO);
		return"redirect:event_main.do";
	}
}
