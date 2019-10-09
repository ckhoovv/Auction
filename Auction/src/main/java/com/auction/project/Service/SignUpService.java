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

	//사용자 로그인
	@Override
	public SignUpDTO doLogin(SignUpDTO signUpDTO) {
		SignUpDTO sdto = signUpDAO.login_member(signUpDTO);
		return sdto;
	}
	
	//관리자 로그인
	@Override
	public SignUpDTO admin_doLogin(SignUpDTO signUpDTO) {
		SignUpDTO a_sdto = signUpDAO.login_admin(signUpDTO);
		return a_sdto;
	}

	//사용자 회원가입 후 결과값 출력
	@Override
	public SignUpDTO signUp_select(SignUpDTO signUpDTO) {
		SignUpDTO selectsdto = signUpDAO.signUp_select(signUpDTO);
		return selectsdto;
	}

	//사용자 회원가입
	@Override
	public void SignUp_insert(SignUpDTO signUpDTO) {
		signUpDAO.insert_member(signUpDTO);
		signUpDTO.setPlace("home");
		signUpDTO.setRecipient("choo");
		signUpDAO.insert_address(signUpDTO);
	}

	
}
