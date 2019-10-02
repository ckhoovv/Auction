package com.auction.project.DAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.project.DTO.CServiceDTO;

@Repository
public class CServiceDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	public List<CServiceDTO> selectAll(){
		return mybatis.selectList("cserviceDAO.selectAll");
	}
}