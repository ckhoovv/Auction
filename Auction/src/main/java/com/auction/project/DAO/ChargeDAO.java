package com.auction.project.DAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.project.DTO.ChargeDTO;

@Repository
public class ChargeDAO {
	
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	public void insert_money (ChargeDTO chargeDTO) {
		mybatis.insert("chargeDAO.insert_money", chargeDTO);
	}
	
	public List<ChargeDTO> moneyAll(){
		return mybatis.selectList("chargeDAO.moneyAll");
		
	}
	
	public ChargeDTO member_money(ChargeDTO chargeDTO) {
		return mybatis.selectOne("chargeDAO.member_money", chargeDTO);
	}
	
	public ChargeDTO member_select(ChargeDTO chargeDTO) {
		return mybatis.selectOne("chargeDAO.member_select", chargeDTO);
	}
	
	public void member_delete (ChargeDTO chargeDTO) {
		mybatis.delete("chargeDAO.member_delete", chargeDTO);
	}
}
