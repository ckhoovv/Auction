package com.auction.project.Interface;

import java.util.List;

import com.auction.project.DTO.E_ListDTO;
import com.auction.project.DTO.E_MainDTO;

public interface E_MainInterface {
	public List<E_MainDTO> e_mainAll();
	
	public void list_insert(E_ListDTO e_listDTO);
}
