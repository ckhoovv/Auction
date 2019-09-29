package com.auction.project.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.project.DAO.SignUpDAO;
import com.auction.project.DTO.SignUpDTO;
import com.auction.project.Interface.SignUpInterface;

@Service
public class SignUpService implements SignUpInterface {
	
	@Autowired
	SignUpDAO signUpDAO; // 로그인 DAO

	@Override
	public SignUpDTO doLogin(SignUpDTO signUpDTO) {
		SignUpDTO sdto = signUpDAO.login_member(signUpDTO);
		return sdto;
	}

	@Override
	public SignUpDTO signUp_select(SignUpDTO signUpDTO) {
		SignUpDTO selectsdto = signUpDAO.signUp_select(signUpDTO);
		return selectsdto;
	}

	@Override
	public void SignUp_insert(SignUpDTO signUpDTO) {
		signUpDAO.insert_member(signUpDTO);
		signUpDTO.setPlace("home");
		signUpDTO.setRecipient("choo");
		signUpDAO.insert_address(signUpDTO);
	}
}
