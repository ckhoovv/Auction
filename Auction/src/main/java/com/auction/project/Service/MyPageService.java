package com.auction.project.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.project.DAO.MyPageDAO;
import com.auction.project.DTO.A_product_listDTO;
import com.auction.project.DTO.DonationDTO;
import com.auction.project.DTO.Donation_ListDTO;
import com.auction.project.DTO.E_ListDTO;
import com.auction.project.DTO.E_WinnerDTO;
import com.auction.project.DTO.SignUpDTO;
import com.auction.project.Interface.MyPageInterface;

@Service
public class MyPageService implements MyPageInterface {
	
	@Autowired
	MyPageDAO mypageDAO;
	
	
	
	@Override
	public List<Donation_ListDTO> myPage(Donation_ListDTO donation_listDTO) {
		List<Donation_ListDTO> my_list = mypageDAO.myPage(donation_listDTO); 
		return my_list;
	}
	
	@Override
	public List<E_ListDTO> e_myPage(E_ListDTO e_listDTO) {
		List<E_ListDTO> e_my_list = mypageDAO.e_myPage(e_listDTO); 
		return e_my_list;
	}
	
	@Override
	public List<E_WinnerDTO> w_myPage(E_WinnerDTO e_WinnerDTO) {
		List<E_WinnerDTO> my_w_list = mypageDAO.w_myPage(e_WinnerDTO); 
		return my_w_list;
	}

	@Override
	public List<A_product_listDTO> p_myPage(A_product_listDTO a_product_listDTO) {
		List<A_product_listDTO> my_p_list = mypageDAO.p_myPage(a_product_listDTO); 
		return my_p_list;
	}
	
	@Override
	public void mypage_update(SignUpDTO signUpDTO) {
		
	}

	@Override
	public SignUpDTO myPage_member_select(SignUpDTO signUpDTO) {
		SignUpDTO my_m_select = mypageDAO.myPage_member_select(signUpDTO);
		return my_m_select;
	}

	@Override
	public void myPage_member_info_update(SignUpDTO signUpDTO) {
		mypageDAO.myPage_member_update(signUpDTO);
		mypageDAO.myPage_address_update(signUpDTO);
	}

	@Override
	public void myPage_member_password_update(SignUpDTO signUpDTO) {
		mypageDAO.myPage_member_password_update(signUpDTO);
	}

}
