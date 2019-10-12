package com.auction.project.Interface;

import java.util.List;

import com.auction.project.DTO.ChargeDTO;

public interface ChargeInterface {
	
	public void insert_money(ChargeDTO chargeDTO);
	
	public List<ChargeDTO> moneyAll();
	
	public ChargeDTO member_money(ChargeDTO chargeDTO);
}
