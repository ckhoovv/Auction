package com.auction.project.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventController {
	
	
	@RequestMapping("event_main.do")
	public String event() {
		return "event_main";
	}
}
