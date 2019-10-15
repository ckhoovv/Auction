package com.auction.project.DAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.project.DTO.A_product_listDTO;
import com.auction.project.DTO.Donation_ListDTO;
import com.auction.project.DTO.E_ListDTO;
import com.auction.project.DTO.E_WinnerDTO;
import com.auction.project.DTO.SignUpDTO;

@Repository
public class MyPageDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;

	public List<Donation_ListDTO> myPage(Donation_ListDTO donation_listDTO) {
		return mybatis.selectList("mypageDAO.my_dona_list", donation_listDTO);
	}
	public List<E_ListDTO> e_myPage(E_ListDTO e_listDTO) {
		return mybatis.selectList("mypageDAO.my_event_list", e_listDTO);
	}
	public List<E_WinnerDTO> w_myPage(E_WinnerDTO e_WinnerDTO) {
		return mybatis.selectList("mypageDAO.my_winner_list", e_WinnerDTO);
	}
	public List<A_product_listDTO> p_myPage(A_product_listDTO a_product_listDTO){
		return mybatis.selectList("mypageDAO.my_pro_list", a_product_listDTO);
	}
	
	public SignUpDTO myPage_member_select(SignUpDTO signUpDTO) {
		return mybatis.selectOne("mypageDAO.myPage_member_select", signUpDTO);
	}
	
	public SignUpDTO myPage_member_update(SignUpDTO signUpDTO) {
		return mybatis.selectOne("mypageDAO.myPage_member_update", signUpDTO);
	}
	
	public SignUpDTO myPage_member_password_update(SignUpDTO signUpDTO) {
		return mybatis.selectOne("mypageDAO.myPage_member_password_update", signUpDTO);
	}
	public SignUpDTO myPage_address_update(SignUpDTO signUpDTO) {
		return mybatis.selectOne("mypageDAO.myPage_address_update", signUpDTO);
	}
}
