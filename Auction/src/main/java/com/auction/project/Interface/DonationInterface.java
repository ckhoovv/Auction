
package com.auction.project.Interface;

import java.util.List;

import com.auction.project.DTO.ChargeDTO;
import com.auction.project.DTO.DonationDTO;
import com.auction.project.DTO.Donation_ListDTO;

public interface DonationInterface {
	
	public List<DonationDTO> selectAll();
	
	public DonationDTO select_donation(DonationDTO donationDTO);
	
	public Donation_ListDTO count_donation(Donation_ListDTO donation_listDTO);
	
	public Donation_ListDTO count_all(Donation_ListDTO donation_listDTO);
	
	public void cal_dona(Donation_ListDTO donation_listDTO);
	
	public void cal_chardona(ChargeDTO chargeDTO);
	
	public ChargeDTO cal_dona_select(ChargeDTO chargeDTO);
	
	
	/* 관리자 기부 관련 */
	public List<DonationDTO> dona_list();
	
	public DonationDTO dona_delete(DonationDTO donationDTO);
}
