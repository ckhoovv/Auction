package com.auction.project.Interface;

import com.auction.project.DTO.SignUpDTO;

public interface SignUpInterface {

	public SignUpDTO doLogin(SignUpDTO signUpDTO);			/* 로그인 */
	
	public void SignUp_insert(SignUpDTO signUpDTO); 		/* 회원가입 */
	
	public SignUpDTO signUp_select(SignUpDTO signUpDTO);  	/* 가입확인 */
}
