package com.auction.project.DAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.project.DTO.Fix_recordDTO;

@Repository
public class Fix_recordDAO {
	@Autowired
	SqlSessionTemplate mybatis;
	
	public List<Fix_recordDTO> selectAll() {
		return mybatis.selectList("fix_recordDAO.selectAll");
	}


}
