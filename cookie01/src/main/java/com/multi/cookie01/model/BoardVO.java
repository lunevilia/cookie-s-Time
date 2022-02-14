package com.multi.cookie01.model;

import java.util.Date;

public class BoardVO {
	private int borNo;
	private String memId;
	private String borTitle;
	private String borScript;
	private Date borUpDate;
	private Date borCreDate;
	private int borHit;
	
	// DB에는 없지만 service에서 가져올 때 넣을 게시판 닉네임
	private String memName;
	
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	
	public int getBorNo() {
		return borNo;
	}
	public void setBorNo(int borNo) {
		this.borNo = borNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getBorTitle() {
		return borTitle;
	}
	public void setBorTitle(String borTitle) {
		this.borTitle = borTitle;
	}
	public String getBorScript() {
		return borScript;
	}
	public void setBorScript(String borScript) {
		this.borScript = borScript;
	}
	public Date getBorUpDate() {
		return borUpDate;
	}
	public void setBorUpDate(Date borUpDate) {
		this.borUpDate = borUpDate;
	}
	public Date getBorCreDate() {
		return borCreDate;
	}
	public void setBorCreDate(Date borCreDate) {
		this.borCreDate = borCreDate;
	}
	public int getBorHit() {
		return borHit;
	}
	public void setBorHit(int borHit) {
		this.borHit = borHit;
	}
	
}
