package com.auction.project.Interface;

import java.util.List;

import com.auction.project.DTO.E_ListDTO;
import com.auction.project.DTO.E_MainDTO;
import com.auction.project.DTO.E_WinnerDTO;

public interface E_MainInterface {
	public List<E_MainDTO> e_mainAll();
	
	public void list_insert(E_ListDTO e_listDTO);
	
	public List<E_WinnerDTO> winnerAll();
	public List<E_WinnerDTO> admin_winnerAll();
	
	public void insert_winner(E_WinnerDTO e_winnerDTO);
}
