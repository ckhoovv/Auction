package com.auction.project.Interface;

import java.util.List;

import com.auction.project.DTO.CServiceDTO;
import com.auction.project.DTO.SignUpDTO;

public interface CServiceInterface {

	public void cs_insert(CServiceDTO cserviceDTO); /* cs 추가 */ 		
	public List<CServiceDTO> selectAll();			/* 질문조회 */ 
}