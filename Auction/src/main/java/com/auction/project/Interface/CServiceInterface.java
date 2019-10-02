package com.auction.project.Interface;

import java.util.List;

import com.auction.project.DTO.CServiceDTO;

public interface CServiceInterface {

	public List<CServiceDTO> selectAll();		/* 질문조회 */ 
}