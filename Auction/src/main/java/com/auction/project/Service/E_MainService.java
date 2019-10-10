package com.auction.project.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.project.DAO.E_MainDAO;
import com.auction.project.DTO.E_ListDTO;
import com.auction.project.DTO.E_MainDTO;
import com.auction.project.Interface.E_MainInterface;

@Service
public class E_MainService implements E_MainInterface{
	@Autowired
	E_MainDAO e_mainDAO;
	
	public List<E_MainDTO> e_mainAll(){
		List<E_MainDTO> e_main = e_mainDAO.e_mainAll();
		return e_main;
	}
	
	/*
	 * public void list_insert(E_ListDTO e_listDTO) {
	 * e_mainDAO.list_insert(e_listDTO); }
	 */
}
