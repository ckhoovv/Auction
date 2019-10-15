package com.auction.project.Interface;

import java.util.List;

import com.auction.project.DTO.A_product_listDTO;
import com.auction.project.DTO.Donation_ListDTO;
import com.auction.project.DTO.E_ListDTO;
import com.auction.project.DTO.E_WinnerDTO;
import com.auction.project.DTO.SignUpDTO;

public interface MyPageInterface {

	public void mypage_update(SignUpDTO signUpDTO); 	/* 회원 수정 */
	
	public List<Donation_ListDTO> myPage(Donation_ListDTO donation_listDTO);
	
	public List<E_ListDTO> e_myPage(E_ListDTO e_listDTO);
	
	public List<E_WinnerDTO> w_myPage(E_WinnerDTO e_WinnerDTO);
	
	public List<A_product_listDTO> p_myPage(A_product_listDTO a_product_listDTO);
	
	public SignUpDTO myPage_member_select(SignUpDTO signUpDTO); /* 회원 조회 */

	public void myPage_member_info_update(SignUpDTO signUpDTO); /* 회원 수정 */
	
	public void myPage_member_password_update(SignUpDTO signUpDTO); /* 회원 수정 */
	
}
