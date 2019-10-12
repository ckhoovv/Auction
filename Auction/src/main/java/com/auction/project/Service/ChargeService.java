package com.auction.project.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.project.DAO.ChargeDAO;
import com.auction.project.DTO.ChargeDTO;
import com.auction.project.Interface.ChargeInterface;

@Service
public class ChargeService implements ChargeInterface{
	@Autowired
	ChargeDAO chargeDAO;
	
	@Override
	public void insert_money(ChargeDTO chargeDTO) {
		chargeDAO.insert_money(chargeDTO);
	}
	
	@Override
	public List<ChargeDTO> moneyAll(){
		List<ChargeDTO> moneyAll = chargeDAO.moneyAll();
		return moneyAll;
	}
	
	@Override
	public ChargeDTO member_money(ChargeDTO chargeDTO) {
		ChargeDTO m_money = chargeDAO.member_money(chargeDTO);
		return m_money;
	}
	
}
