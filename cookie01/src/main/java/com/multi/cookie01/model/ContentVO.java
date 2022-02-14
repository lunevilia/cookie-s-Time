package com.multi.cookie01.model;

import java.util.Date;

public class ContentVO {
	private int cntNo;
	private String cntName;
	private String cntScript;
	private Date cntStart;
	private Date cntEnd;
	private String cntCategory;
	private String cntImage;
	

	
	public String getCntImage() {
		return cntImage;
	}
	public void setCntImage(String cntImage) {
		this.cntImage = cntImage;
	}
	public int getCntNo() {
		return cntNo;
	}
	public void setCntNo(int cntNo) {
		this.cntNo = cntNo;
	}
	public String getCntName() {
		return cntName;
	}
	public void setCntName(String cntName) {
		this.cntName = cntName;
	}
	public String getCntScript() {
		return cntScript;
	}
	public void setCntScript(String cntScript) {
		this.cntScript = cntScript;
	}
	public Date getCntStart() {
		return cntStart;
	}
	public void setCntStart(Date cntStart) {
		this.cntStart = cntStart;
	}
	public Date getCntEnd() {
		return cntEnd;
	}
	public void setCntEnd(Date cntEnd) {
		this.cntEnd = cntEnd;
	}
	public String getCntCategory() {
		return cntCategory;
	}
	public void setCntCategory(String cntCategory) {
		this.cntCategory = cntCategory;
	}
	
	
}
