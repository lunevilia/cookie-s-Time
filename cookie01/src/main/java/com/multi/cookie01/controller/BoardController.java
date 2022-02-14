package com.multi.cookie01.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.multi.cookie01.model.BoardVO;
import com.multi.cookie01.service.BoardService;
import com.multi.cookie01.service.MemberService;

@Controller
public class BoardController {
	@Autowired
	BoardService service;
	
	@Autowired
	MemberService memservice;
	
	@RequestMapping("/freeBoard")
	public String freeBoard(Model model) {
		ArrayList<BoardVO> borList = service.boardListView();
		model.addAttribute("borList", borList);
		
		return "board/boardListView";
	}
	
	@RequestMapping("/boardListView/boardDetailView/{borNo}")
	public String boardDetailView(@PathVariable String borNo, Model model) {
		BoardVO vo = service.boardDetailView(borNo);
		model.addAttribute("vo", vo);
		return "board/boardDetailView";
	}
	
	// 조회수 증가시키기
	@ResponseBody
	@RequestMapping("/BoardHit")
	public void BoardHit(@RequestParam("borNo") String borNo) {
		service.updateBoardhit(borNo);
	}
	
	@RequestMapping("/detailDelete/{borNo}")
	public String detailDelete(@PathVariable String borNo) {
		service.detailDelete(borNo);
		
		return "redirect:./../freeBoard";
	}
	
	// 게시판 수정 페이지 이동
	@RequestMapping("/boardUpdateView/{borNo}")
	public String boardUpdateView(@PathVariable String borNo, Model model) {
		BoardVO vo = service.boardDetailView(borNo);
		model.addAttribute("vo", vo);
		return "board/boardUpdateView";
	}
	
	@RequestMapping("/boardUpdate")
	public String boardUpdate(@RequestParam HashMap<String, Object> param) {
		service.boardUpdate(param);
		return "redirect:./freeBoard";
	}
	
	@RequestMapping("/insertBoardView")
	public String insertBoardView() {
		return "board/insertBoardView";
	}
	
	@RequestMapping("/insertBoard")
	public String insertBoard(@RequestParam HashMap<String, Object> param) {
		

//		String memName = param.get("memId").toString();
//		System.out.println(memName);
//		String memId = memservice.memIdCheck2(memName);
//		System.out.println(memId);
//		param.replace("memId", memId);
//		for (Entry<String, Object> entrySet : param.entrySet()) {
//			System.out.println(entrySet.getKey() + " : " + entrySet.getValue());
//		}
		
		service.insertBoard(param);

		return "redirect:./freeBoard";
	}
}
