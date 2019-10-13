package com.auction.project.DAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.project.DTO.ChargeDTO;
import com.auction.project.DTO.E_ListDTO;
import com.auction.project.DTO.E_MainDTO;
import com.auction.project.DTO.E_WinnerDTO;

@Repository
public class E_MainDAO {
	@Autowired
	SqlSessionTemplate mybatis;
	
	public List<E_MainDTO> e_mainAll(){
		return mybatis.selectList("e_mainDAO.e_mainAll");
	}

	
	public void list_insert (E_ListDTO e_listDTO) {
		mybatis.insert("e_mainDAO.list_insert", e_listDTO);
	}
	
	public List<E_WinnerDTO> winnerAll(){
		return mybatis.selectList("e_mainDAO.winnerAll");
	}
	public List<E_WinnerDTO> admin_winnerAll() {
		return mybatis.selectList("e_mainDAO.winnerALl");
	}
	public void insert_winner (E_WinnerDTO e_winnerDTO) {
		mybatis.insert("e_mainDAO.insert_winner", e_winnerDTO);
	}
	
	public ChargeDTO coupon_select (ChargeDTO chargeDTO) {
	      return mybatis.selectOne("e_mainDAO.coupon_select", chargeDTO);
	}
}
