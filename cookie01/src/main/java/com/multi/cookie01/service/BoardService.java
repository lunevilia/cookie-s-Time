package com.multi.cookie01.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.multi.cookie01.dao.IBoardDAO;
import com.multi.cookie01.model.BoardVO;

@Service
public class BoardService implements IBoardService {
	@Autowired
	@Qualifier("IBoardDAO")
	IBoardDAO dao;
	
	@Override
	public ArrayList<BoardVO> boardListView() {
		return dao.boardListView();
	}
	
	@Override
	public BoardVO boardDetailView(String borNo) {
		// 게시판 상세 조회
		return dao.boardDetailView(borNo);
	}
	
	@Override
	public void detailDelete(String borNo) {
		// 게시판 삭제
		dao.detailDelete(borNo);
	}
	
	@Override
	public void boardUpdate(HashMap<String, Object> map) {
		// 게시판 수정
		dao.boardUpdate(map);
	}
	
	@Override
	public void insertBoard(HashMap<String, Object> map) {
		// 게시판 글쓰기
		dao.insertBoard(map);
	}
	
	@Override
	public void updateBoardhit(String borNo) {
		//조회수 증가
		dao.updateBoardhit(borNo);
	}

}
