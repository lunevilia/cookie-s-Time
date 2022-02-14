package com.multi.cookie01.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.multi.cookie01.dao.IMemberDAO;
import com.multi.cookie01.model.MemberVO;

@Service
public class MemberService implements IMemberService {
	@Autowired
	@Qualifier("IMemberDAO")
	IMemberDAO dao;
	
	@Override
	public void insertMember(MemberVO vo) {
		dao.insertMember(vo);

	}

	@Override
	public MemberVO loginCheck(HashMap<String, Object> map) {
		return dao.loginCheck(map);
	}

	@Override
	public String memIdCheck(String memId) {
		return dao.memIdCheck(memId);
	}
	
	@Override 
	public String memIdCheck2(String memName) {
		return dao.memIdCheck2(memName);
		// 이름을 통해 id 가져오기 - boardController 참고
	}
	
	@Override
	public MemberVO mypageView(String memId) {
		return dao.mypageView(memId);
		// 마이페이지 가져오기
	}
	
	@Override
	public void deleteMember(String memId) {
		dao.deleteMember(memId);
		// 마이페이지에서 회원탈퇴
	}
	
	@Override
	public String memPwdCheck(String memId) {
		// 패스워드 체크(update)
		return dao.memPwdCheck(memId);
	}
	
	@Override
	public void newPwdUpdate(HashMap<String, Object> map) {
		// 패스워드 업데이트
		dao.newPwdUpdate(map);
	}
	@Override
	public void nowPwdUpdate(HashMap<String, Object> map) {
		// 기존 패스워드로 업데이트
		dao.nowPwdUpdate(map);
	}

}
