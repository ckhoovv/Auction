package com.auction.project.DAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.project.DTO.AddressDTO;
import com.auction.project.DTO.MemberDTO;
import com.auction.project.DTO.SignUpDTO;

@Repository //DB용 bean
public class SignUpDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	public SignUpDTO insert_member(SignUpDTO signUpDTO) {
		return mybatis.selectOne("signUpDAO.insert_member", signUpDTO);
	}
	
	public SignUpDTO insert_address(SignUpDTO signUpDTO) {
		return mybatis.selectOne("signUpDAO.insert_address", signUpDTO);
	}

	public SignUpDTO signUp_select(SignUpDTO signUpDTO) {
		return mybatis.selectOne("signUpDAO.select_signUp", signUpDTO);
	}
	
	public SignUpDTO login_member(SignUpDTO signUpDTO) {
		return mybatis.selectOne("signUpDAO.login_member", signUpDTO);
	}

	//관리자 로그인
	public SignUpDTO login_admin(SignUpDTO signUpDTO) {
		return mybatis.selectOne("signUpDAO.login_admin", signUpDTO);
	}
	
	public AddressDTO select_address(AddressDTO addressDTO) {
		return mybatis.selectOne("signUpDAO.select_address", addressDTO);
	}
	
	public List<MemberDTO> selectAll() {
		return mybatis.selectList("signUpDAO.selectAll");
	} 
}
