package com.auction.project.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.project.DAO.DonationDAO;
import com.auction.project.DTO.DonationDTO;
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
	
	
	
}
