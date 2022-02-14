package com.multi.cookie01.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.multi.cookie01.model.BoardVO;

public interface IBoardService {
	ArrayList<BoardVO> boardListView();	// 전체 조회
	BoardVO boardDetailView(String borNo); // 게시판 상세 조회
	void detailDelete(String borNo);	// 게시판 삭제
	void boardUpdate(HashMap<String, Object> map);	// 게시판 수정
	void insertBoard(HashMap<String, Object> map);	// 게시판 글쓰기
	void updateBoardhit(String borNo);	//조회수 증가
}
