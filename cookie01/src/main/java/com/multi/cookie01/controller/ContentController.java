package com.multi.cookie01.controller;


import java.util.ArrayList;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.cookie01.model.ContentVO;
import com.multi.cookie01.service.ContentService;

@Controller
public class ContentController {
	@Autowired
	ContentService service;
	
	//HOME 메인 페이지
	@RequestMapping("/")
	public String index(Model model) {
		ArrayList<ContentVO> cntList = service.ListAllContent();
		model.addAttribute("cntList", cntList);
		
		
		
		return "index";
	}
		
		
	@RequestMapping("/ContentListView")
	public String ContentListView(Model model) {
		ArrayList<ContentVO> cntList = service.ListAllContent();
		model.addAttribute("cntList", cntList);

		return "content/ContentListView";
	}
}
