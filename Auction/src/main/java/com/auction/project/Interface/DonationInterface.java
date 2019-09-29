
package com.auction.project.Interface;

import java.util.List;

import com.auction.project.DTO.DonationDTO;
import com.auction.project.DTO.Donation_ListDTO;

public interface DonationInterface {
	
	public List<DonationDTO> selectAll();
	
	public List<Donation_ListDTO> count_list();
	
	public DonationDTO select_donation(DonationDTO donationDTO);
	
	public Donation_ListDTO count_donation(Donation_ListDTO donation_listDTO);
	
}
