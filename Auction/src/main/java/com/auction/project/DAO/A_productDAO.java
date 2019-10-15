package com.auction.project.DAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.project.DTO.A_productDTO;
import com.auction.project.DTO.A_product_listDTO;
import com.auction.project.DTO.MemberDTO;

@Repository
public class A_productDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public void insert(A_productDTO a_productDTO) {
		my.insert("a_productDAO.insert", a_productDTO);
	}
	public void insert_list(A_product_listDTO a_product_listDTO) {
		my.insert("a_productDAO.insert_list", a_product_listDTO);
	}	
	
	
	public int delete(A_productDTO a_productDTO) {
		return my.delete("a_productDAO.delete", a_productDTO);
	}
	
	public void update(A_productDTO a_productDTO) {
		my.update("a_productDAO.update", a_productDTO);
	}
	
	public void updatecount(A_productDTO a_productDTO) {
		my.update("a_productDAO.updatecount", a_productDTO);
	}
	public void moneyupdate(A_productDTO a_productDTO) {
		my.update("a_productDAO.moneyupdate", a_productDTO);
	}
	
	public A_productDTO select(A_productDTO a_productDTO) {
		return my.selectOne("a_productDAO.select", a_productDTO);
	}
	
	public List<A_productDTO> selectAll() {
		return my.selectList("a_productDAO.selectAll");
	}


}
