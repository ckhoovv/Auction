package com.auction.project.DAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.project.DTO.A_proDTO;

@Repository
public class A_proDAO {
	@Autowired
	SqlSessionTemplate mybatis;

	public List<A_proDTO> selectAll() {
		return mybatis.selectList("aproDAO.selectAll");
	}

	public void delete(A_proDTO a_proDTO) {
		mybatis.delete("aproDAO.delete", a_proDTO);
	}

}
