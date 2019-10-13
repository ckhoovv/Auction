package com.auction.project.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.project.DAO.E_MainDAO;
import com.auction.project.DTO.ChargeDTO;
import com.auction.project.DTO.E_ListDTO;
import com.auction.project.DTO.E_MainDTO;
import com.auction.project.DTO.E_WinnerDTO;
import com.auction.project.Interface.E_MainInterface;

@Service
public class E_MainService implements E_MainInterface{
	@Autowired
	E_MainDAO e_mainDAO;
	
	@Override
	public List<E_MainDTO> e_mainAll(){
		List<E_MainDTO> e_main = e_mainDAO.e_mainAll();
		return e_main;
	}
	@Override
	public void list_insert(E_ListDTO e_listDTO) {
		int count= e_listDTO.getE_count();
		for(int i=0 ; i < count ; i++) {
			e_listDTO.setE_count(1);
			e_mainDAO.list_insert(e_listDTO);
		}
	}
	
	@Override
	public List<E_WinnerDTO> winnerAll(){
		List<E_WinnerDTO> winnerAll = e_mainDAO.winnerAll();
		return winnerAll;
	}
	@Override
	public List<E_WinnerDTO> admin_winnerAll(){
		List<E_WinnerDTO> admin_winnerAll = e_mainDAO.winnerAll();
		return admin_winnerAll;
	}
	
	@Override
	public void insert_winner(E_WinnerDTO e_winnerDTO) {
		e_mainDAO.insert_winner(e_winnerDTO);
	}
	@Override
	public ChargeDTO coupon_select(ChargeDTO chargeDTO) {
		ChargeDTO coupon = e_mainDAO.coupon_select(chargeDTO);
		System.out.println(coupon.getCoupon());
		return coupon;
	}
}
