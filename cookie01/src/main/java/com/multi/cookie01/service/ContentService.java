package com.multi.cookie01.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.multi.cookie01.dao.IContentDAO;
import com.multi.cookie01.model.ContentVO;

@Service
public class ContentService implements IContentService {
	@Autowired
	@Qualifier("IContentDAO")
	IContentDAO dao;
	
	@Override
	public ArrayList<ContentVO> ListAllContent() {
		return dao.ListAllContent();
	}

}
