package com.auction.project.Controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.activation.CommandMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.auction.project.DTO.A_productDTO;
import com.auction.project.Service.A_productServiceTm1;

@Controller
public class A_productContorller {

	@Autowired
	A_productServiceTm1 a_productService;
	
	@RequestMapping("test1.do")
	public String test1() {
		return"test1";
	}
	
	@RequestMapping("insert.do")
	public String Insert(A_productDTO a_productDTO) {
		a_productDTO.setA_endmoney(a_productDTO.getA_startmoney());
		a_productDTO.setA_viewcount(0);
		a_productService.insert(a_productDTO);
		System.out.println("insert 요청");
		return "redirect:test2.do";
	}
	
	@RequestMapping("update.do")
	public String Updata(A_productDTO a_productDTO, Model model) {
		a_productService.update(a_productDTO);
		return "redirect:test2.do";
	}
	
	@RequestMapping("moneyupdate.do")
	public void moneyUpdata(A_productDTO a_productDTO) {
		a_productService.moneyupdate(a_productDTO);
	}
	
	@RequestMapping("test3.do")
	public void select(A_productDTO a_productDTO, Model model) {
		a_productService.updatecount(a_productDTO);
		model.addAttribute("dto", a_productService.select(a_productDTO));
	}
	
	@RequestMapping("test4.do")
	public void selectupdate(A_productDTO a_productDTO, Model model) {
		model.addAttribute("dto", a_productService.select(a_productDTO));
	}
	

	@RequestMapping("test2.do")
	public void selectAll(Model model) {
		model.addAttribute("list", a_productService.selectAll());
	}


}
