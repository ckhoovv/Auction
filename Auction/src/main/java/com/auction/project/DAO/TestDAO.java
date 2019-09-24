package com.auction.project.DAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.project.DTO.TestDTO;

@Repository //DB용 bean
public class TestDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	public void insert(TestDTO testDTO) {
		mybatis.insert("tDAO.insert", testDTO);
	}
	
	public void delete(TestDTO testDTO) {
		mybatis.delete("tDAO.delete", testDTO);
	}
	
	public void update(TestDTO testDTO) {
		mybatis.update("tDAO.update", testDTO);
	}
	
	public TestDTO select(TestDTO testDTO) {
		return mybatis.selectOne("tDAO.select", testDTO);
	}
	
	public List<TestDTO> selectAll() {
		return mybatis.selectList("tDAO.selectAll");
	}
}
