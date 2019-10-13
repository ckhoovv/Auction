
package com.auction.project.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.project.DAO.DonationDAO;
import com.auction.project.DTO.ChargeDTO;
import com.auction.project.DTO.DonationDTO;
import com.auction.project.DTO.Donation_ListDTO;
import com.auction.project.Interface.DonationInterface;

@Service
public class DonationService implements DonationInterface{

	@Autowired
	DonationDAO donationDAO;
	
	@Override
	public List<DonationDTO> selectAll() {
		List<DonationDTO> list = donationDAO.selectAll();
		return list;
	}
	
	@Override
	public DonationDTO select_donation(DonationDTO donationDTO) {
		DonationDTO dto = donationDAO.select_donation(donationDTO);
		return dto;
	}
	@Override
	public Donation_ListDTO count_donation(Donation_ListDTO donation_listDTO) {
		Donation_ListDTO count = donationDAO.count_donation(donation_listDTO);
		return count;
	}
	
	@Override
	public Donation_ListDTO count_all(Donation_ListDTO donation_listDTO) {
		Donation_ListDTO count_all = donationDAO.count_all(donation_listDTO);
		return count_all;
	}

	@Override
	public void cal_dona(Donation_ListDTO donation_listDTO) {
		donationDAO.cal_dona(donation_listDTO);
	}

	@Override
	public void cal_chardona(ChargeDTO chargeDTO) {
		donationDAO.cal_chardona(chargeDTO);
	}

	@Override
	public ChargeDTO cal_dona_select(ChargeDTO chargeDTO) {
		ChargeDTO f_money = donationDAO.cal_dona_select(chargeDTO);
		return f_money;
	}
	
	/* 관리자 기부 관련 */
	@Override
	public List<DonationDTO> dona_list() {
		List<DonationDTO> dona_list = donationDAO.dona_list();
		return dona_list;
	}

	@Override
	public DonationDTO dona_delete(DonationDTO donationDTO) {
		DonationDTO dona_delete =donationDAO.dona_delete(donationDTO);
		return dona_delete;
	}

}