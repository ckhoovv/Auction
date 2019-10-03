package com.auction.project.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.project.DAO.CServiceDAO;
import com.auction.project.DTO.CServiceDTO;
import com.auction.project.Interface.CServiceInterface;

@Service
public class CServiceService implements CServiceInterface {

	@Autowired
	CServiceDAO cserviceDAO;

	@Override
	public void cs_insert(CServiceDTO cserviceDTO) {
		cserviceDTO.setId(0);
		cserviceDAO.cs_insert(cserviceDTO);
	}
	
	@Override
	public List<CServiceDTO> selectAll() {
		List<CServiceDTO> list = cserviceDAO.selectAll();
		return list;
	}

	
}