package com.multi.cookie01.dao;

import java.util.HashMap;

import com.multi.cookie01.model.MemberVO;

public interface IMemberDAO {
	void insertMember(MemberVO vo);
	MemberVO loginCheck(HashMap<String, Object> map);
	String memIdCheck(String memId);
	String memIdCheck2(String memName);	// 이름을 통해 id 가져오기 - boardController 참고
	MemberVO mypageView(String memId); // 마이페이지 가져오기
	void deleteMember(String memId);	// 마이페이지에서 회원탈퇴
	String memPwdCheck(String memId);	// 패스워드 체크(update)
	void newPwdUpdate(HashMap<String, Object> map); // 패스워드 업데이트
	void nowPwdUpdate(HashMap<String, Object> map); 	// 기존 패스워드로 업데이트
}
