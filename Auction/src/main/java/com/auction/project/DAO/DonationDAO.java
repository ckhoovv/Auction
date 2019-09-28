package com.auction.project.DAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.project.DTO.DonationDTO;
import com.auction.project.DTO.Donation_ListDTO;

@Repository //DB¿ë bean
public class DonationDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	public List<DonationDTO> selectAll(){
		return mybatis.selectList("donationDAO.selectAll");
	}
	
	public DonationDTO select_donation(DonationDTO donationDTO) {
		return mybatis.selectOne("donationDAO.select_donation", donationDTO);
	}
	public Donation_ListDTO count_donation(Donation_ListDTO donation_listDTO) {
		return mybatis.selectOne("donationDAO.count_donation", donation_listDTO);
	}
	public List<Donation_ListDTO> count_donation() {
		return mybatis.selectList("donationDAO.count_donation");
	}
	
}