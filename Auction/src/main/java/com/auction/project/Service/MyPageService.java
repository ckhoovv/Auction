package com.auction.project.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.project.DAO.MyPageDAO;

@Service
public class MyPageService {
	
	@Autowired
	MyPageDAO mypageDAO;
	
}
