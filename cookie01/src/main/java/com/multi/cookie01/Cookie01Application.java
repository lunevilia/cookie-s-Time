package com.multi.cookie01;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.multi.cookie01.controller.BoardController;
import com.multi.cookie01.controller.ContentController;
import com.multi.cookie01.controller.CookieController;
import com.multi.cookie01.dao.IBoardDAO;
import com.multi.cookie01.dao.IContentDAO;
import com.multi.cookie01.dao.IMemberDAO;
import com.multi.cookie01.service.BoardService;
import com.multi.cookie01.service.ContentService;
import com.multi.cookie01.service.MemberService;

@SpringBootApplication
@ComponentScan(basePackageClasses=CookieController.class)
@ComponentScan(basePackageClasses=ContentController.class)
@ComponentScan(basePackageClasses=BoardController.class)
@ComponentScan(basePackageClasses=MemberService.class)
@ComponentScan(basePackageClasses=ContentService.class)
@ComponentScan(basePackageClasses=BoardService.class)
@MapperScan(basePackageClasses=IMemberDAO.class)
@MapperScan(basePackageClasses=IContentDAO.class)
@MapperScan(basePackageClasses=IBoardDAO.class)
public class Cookie01Application {

	public static void main(String[] args) {
		SpringApplication.run(Cookie01Application.class, args);
	}

}
