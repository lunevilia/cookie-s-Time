package com.multi.cookie01.controller;


import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.multi.cookie01.model.MemberVO;

import com.multi.cookie01.service.MemberService;



@Controller
public class CookieController {
	@Autowired
	MemberService service;	
	
	
	
	
	// 회원가입 창 이동
	@RequestMapping("/signUp")
	public String signUp() {
		return "member/signUp";
	}
	
	// 아이디 중복체크
	@ResponseBody
	@RequestMapping("/memIdCheck")
	public String memIdCheck(@RequestParam("memId") String memId) {
		String idCheck_result = "use";
		String result = service.memIdCheck(memId);
		if(result != null) {
			idCheck_result = "no_use";
		}
		
		return idCheck_result;
	}
	
	// 회원가입하기
	@RequestMapping("/signUpCheck")
	public String signUpCheck(MemberVO vo) {
		service.insertMember(vo);
		return "redirect:./logIn";
	}
	
	// 로그인 창 이동
	@RequestMapping("/logIn")
	public String logIn() {
		return "member/logIn";
	}
	
	@ResponseBody
	@RequestMapping("/logInCheck")
	public String logInCheck(@RequestParam HashMap<String, Object> param,
			   HttpSession session) {
		// 로그인 체크 결과
		System.out.println("Session login check 통과");
		MemberVO vo = service.loginCheck(param);
		String result = "fail";
		
		if(vo != null) {
			//로그인 성공하면 세션 변수 지정
			session.setAttribute("sid", vo.getMemId());
			session.setAttribute("sName", vo.getMemName());
			result = "success";
		}
				
		return result;	
	}
	
	//SNS 로그인 창 이동
	@RequestMapping("/showSnsLogin")
	public String showSnsLogin() {
		return "member/showSnsLogin";
	}
	//로그아웃
	@RequestMapping("/logOut")
	public String logOut(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	// mypage 이동
	@RequestMapping("/myPageView/{memId}")
	public String myPageView(@PathVariable String memId, Model model) {
		MemberVO vo = service.mypageView(memId);
		model.addAttribute("vo", vo);
		return "member/myPage";
	}
	
	// 마이페이지 수정하기로 창 이동
	@RequestMapping("/myPageView/updateMemberViews/{memId}")
	public String updateMemberViews(@PathVariable String memId, Model model) {
		MemberVO vo = service.mypageView(memId);
		model.addAttribute("vo", vo);
		return "member/updateMemberForm";
	}
	
	
	@RequestMapping("/deleteMember/{memId}")
	public String deleteMember(@PathVariable String memId,
			   HttpSession session) {
		session.invalidate();
		service.deleteMember(memId);
		
		return "redirect:/";
	}
	
	@ResponseBody
	@RequestMapping("/newPwdUpdate")
	public String newPwdUpdate(@RequestParam HashMap<String, Object> param) {
		// 로그인 체크 결과
		System.out.println("newPwdUpdate 통과");
		String memId = param.get("memId").toString();
		// 1. 현재 패스워드 일치 체크 필요
		
		
		// 1-2. 패스워드 불일치 할 경우 sql update는 하지않는다
		// 2. 일치할 경우 새로운 패스워드 및 새 정보들 sql update	(else)
		String result = "false";
		if(service.memPwdCheck(memId).equals(param.get("memPwd").toString())) {
			service.newPwdUpdate(param);
			result = "true"; // 즉 새 정보 입력한다
		}
				
		return result;	
	}
	
	@ResponseBody
	@RequestMapping("/nowPwdUpdate")
	public String nowPwdUpdate(@RequestParam HashMap<String, Object> param) {
		// 로그인 체크 결과
		System.out.println("nowPwdUpdate 통과");
		System.out.println(param.toString());
		System.out.println(param);
		String memId = param.get("memId").toString();
		// 1. 현재 패스워드 일치 체크 필요
		
		
		// 1-2. 패스워드 불일치 할 경우 sql update는 하지않는다
		// 2. 일치할 경우 새 정보들 sql update (name, email, cookieId 만)
		String result = "false";
		if(service.memPwdCheck(memId).equals(param.get("memPwd").toString())){
			service.nowPwdUpdate(param);
			result = "true"; // 즉 새 정보 입력한다
		}
				
		return result;	
	}

}
