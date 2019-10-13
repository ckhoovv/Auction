package com.auction.project.DAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.project.DTO.ChargeDTO;
import com.auction.project.DTO.DonationDTO;
import com.auction.project.DTO.Donation_ListDTO;

@Repository //DB�� bean
public class DonationDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	public List<DonationDTO> selectAll(){
		return mybatis.selectList("donationDAO.selectAll");
	}
	public Donation_ListDTO count_all(Donation_ListDTO donation_listDTO) {
		return mybatis.selectOne("donationDAO.count_all", donation_listDTO);
	}
	public DonationDTO select_donation(DonationDTO donationDTO) {
		return mybatis.selectOne("donationDAO.select_donation", donationDTO);
	}
	public Donation_ListDTO count_donation(Donation_ListDTO donation_listDTO) {
		return mybatis.selectOne("donationDAO.count_donation", donation_listDTO);
	}
	public void cal_dona( Donation_ListDTO donation_listDTO) {
		mybatis.insert("donationDAO.cal_dona", donation_listDTO);
	}
	public void cal_chardona(ChargeDTO chargeDTO) {
		mybatis.insert("donationDAO.cal_chardona", chargeDTO);
	}
	public ChargeDTO cal_dona_select(ChargeDTO chargeDTO) {
		return mybatis.selectOne("donationDAO.cal_dona_select", chargeDTO);
	}
	
	/* 관리자 기부 관련 */
	
	public List<DonationDTO> dona_list(){
		return mybatis.selectList("donationDAO.dona_list");
	}
	public DonationDTO dona_delete(DonationDTO donationDTO) {
		return mybatis.selectOne("donationDAO.dona_delete", donationDTO);
	}
}