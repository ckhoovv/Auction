package com.auction.project.Interface;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.auction.project.DTO.A_productDTO;
import com.auction.project.DTO.A_product_listDTO;

public interface A_productService {

	public void insert(A_productDTO a_productDTO);

	public void insert_list(A_product_listDTO a_product_listDTO);

	public List<A_productDTO> selectAll();

	public A_productDTO select(A_productDTO a_productDTO);
	
	public void update(A_productDTO a_productDTO);
	
	public void moneyupdate(A_productDTO a_productDTO);
	
	public void updatecount(A_productDTO a_productDTO);

}
