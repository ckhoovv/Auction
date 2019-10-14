package com.auction.project.Service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.io.File;
import java.util.Enumeration;
import java.util.Iterator;

import org.apache.commons.logging.Log;
import org.apache.ibatis.jdbc.Null;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.auction.project.DAO.A_productDAO;
import com.auction.project.DTO.A_productDTO;
import com.auction.project.Interface.A_productService;

@Service
public class A_productServiceTm1 implements A_productService {

	@Autowired
	A_productDAO a_productDAO;

	@Override
	public void insert(A_productDTO a_productDTO) {
		int a_num = a_productDTO.getA_num();
		if(a_num == 0) {
			a_productDTO.setA_num(1);
		}
		
		a_productDAO.insert(a_productDTO);
	}

	@Override
	public A_productDTO select(A_productDTO a_productDTO) {
		// TODO Auto-generated method stub
		A_productDTO dto = a_productDAO.select(a_productDTO);
		return dto;
	}

	@Override
	public List<A_productDTO> selectAll() {
		// TODO Auto-generated method stub
		List<A_productDTO> list = a_productDAO.selectAll();
		return list;
	}

	@Override
	public void updatecount(A_productDTO a_productDTO) {
		a_productDAO.updatecount(a_productDTO);
	}

	@Override
	public void update(A_productDTO a_productDTO) {
		a_productDAO.update(a_productDTO);
	}

	@Override
	public void moneyupdate(A_productDTO a_productDTO) {
		a_productDAO.moneyupdate(a_productDTO);
	}

}
