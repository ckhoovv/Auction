package com.auction.project.DAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.project.DTO.CServiceDTO;
import com.auction.project.DTO.SignUpDTO;

@Repository
public class CServiceDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	public CServiceDTO cs_insert(CServiceDTO cserviceDTO) {
		return mybatis.selectOne("cserviceDAO.insert", cserviceDTO);
	}
	
	public CServiceDTO cs_delete(CServiceDTO cserviceDTO) {
		return mybatis.selectOne("cserviceDAO.delete", cserviceDTO);
	}
	
	public CServiceDTO cs_update(CServiceDTO cserviceDTO) {
		return mybatis.selectOne("cserviceDAO.update", cserviceDTO);
	}
	
	public List<CServiceDTO> selectAll(){
		return mybatis.selectList("cserviceDAO.selectAll");
	}
}