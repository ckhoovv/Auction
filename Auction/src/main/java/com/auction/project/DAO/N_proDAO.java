package com.auction.project.DAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.project.DTO.MemberDTO;
import com.auction.project.DTO.N_proDTO;

@Repository
public class N_proDAO {
	@Autowired
	SqlSessionTemplate mybatis;
	
	public List<N_proDTO> selectAll() {
		return mybatis.selectList("nproDAO.selectAll");
	}

	public int delete(N_proDTO n_proDTO) {
		return mybatis.delete("nproDAO.delete", n_proDTO);
	}
}
