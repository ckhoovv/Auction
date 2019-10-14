package com.auction.project.Interface;

import java.util.List;

import com.auction.project.DTO.ChargeDTO;

public interface ChargeInterface {
	
	public void insert_money(ChargeDTO chargeDTO);
	
	public List<ChargeDTO> moneyAll();
	
	public ChargeDTO member_money(ChargeDTO chargeDTO);
	
	public ChargeDTO member_select(ChargeDTO chargeDTO); /* 마지막 로우 조회(경매값 비교하기 위해) */
	public void member_delete(ChargeDTO chargeDTO);		 /* 경매 금액 반환  */
}
