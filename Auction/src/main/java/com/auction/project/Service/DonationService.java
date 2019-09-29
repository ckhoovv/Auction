
package com.auction.project.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.project.DAO.DonationDAO;
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
	public List<Donation_ListDTO> count_donation() {
		List<Donation_ListDTO> list_count = donationDAO.count_donation();
		return list_count;
	}
}