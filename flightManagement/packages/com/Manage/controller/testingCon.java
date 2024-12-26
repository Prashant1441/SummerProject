package com.Manage.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Manage.domain.flight;

@Controller
public class testingCon {
	

	@RequestMapping(value= {"/test/ajax"})
	public String what(){
		return "test";
	}


	@RequestMapping(value= {"/selects"})
	public String selet(@ModelAttribute("flightClass") flight f,Model m) {
		
		Map<String,String > traveler=new HashMap<>();
		traveler.put("ad", "adult");
		traveler.put("ch", "child");
		traveler.put("se", "senior");
		m.addAttribute("traveler",traveler);
		return "testSelect";
	}

	@RequestMapping(value= {"/show"})
	public String print(){
		return "example";
	}
	
}
