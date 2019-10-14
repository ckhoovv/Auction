package com.auction.project.DAO;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.project.DTO.AddressDTO;
import com.auction.project.DTO.MemberDTO;

@Repository
public class Admin_memberDAO {

	@Autowired
	SqlSessionTemplate mybatis;

	public void insert(MemberDTO memberDTO) {
		mybatis.insert("amDAO.insert", memberDTO);
	}

	public int delete(MemberDTO memberDTO) {
		return mybatis.delete("amDAO.delete", memberDTO);
	}

	public void update(MemberDTO memberDTO) {
		mybatis.update("amDAO.update", memberDTO);
	}

//	public AddressDTO selectAddress(AddressDTO addressDTO) {
//		return mybatis.selectOne("amDAO.selectAddress", addressDTO);
//	}

	public List<AddressDTO> selectAddressAll(AddressDTO addressDTO) {
		return mybatis.selectList("amDAO.selectAddressAll", addressDTO);
	}
	
	public void updateAddress(AddressDTO addressDTO) {
		mybatis.update("amDAO.updateAddress", addressDTO);
	}

	public MemberDTO select(MemberDTO memberDTO) {
		return mybatis.selectOne("amDAO.select", memberDTO);
	}

	public List<MemberDTO> selectAll() {
		return mybatis.selectList("amDAO.selectAll");
	}
}
