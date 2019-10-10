package com.auction.project.DAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.project.DTO.E_ListDTO;
import com.auction.project.DTO.E_MainDTO;

@Repository
public class E_MainDAO {
	@Autowired
	SqlSessionTemplate mybatis;
	
	public List<E_MainDTO> e_mainAll(){
		return mybatis.selectList("e_mainDAO.e_mainAll");
	}
	/*
	 * public E_ListDTO list_insert(E_ListDTO e_listDTO) { return
	 * mybatis.selectOne("e_mainDAO.list_insert", e_listDTO); }
	 */
}
