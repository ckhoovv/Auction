package com.auction.project.DAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.project.DTO.AddressDTO;
import com.auction.project.DTO.MemberDTO;

@Repository //DB용 bean
public class SignUpInsertDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	public void insert_member(MemberDTO memberDTO) {
		mybatis.insert("signUpDAO.insert_member", memberDTO);
	}
	
	public void insert_address(AddressDTO addressDTO) {
		mybatis.insert("signUpDAO.insert_address", addressDTO);
	}
	
	public void delete(MemberDTO memberDTO) {
		mybatis.delete("signUpDAO.delete", memberDTO);
	}
	
	public void update(MemberDTO memberDTO) {
		mybatis.update("signUpDAO.update", memberDTO);
	}
	
	public MemberDTO select_member(MemberDTO memberDTO) {
		return mybatis.selectOne("signUpDAO.select_member", memberDTO);
	}
	
	public AddressDTO select_address(AddressDTO addressDTO) {
		return mybatis.selectOne("signUpDAO.select_address", addressDTO);
	}
	
	public List<MemberDTO> selectAll() {
		return mybatis.selectList("signUpDAO.selectAll");
	} 
}
