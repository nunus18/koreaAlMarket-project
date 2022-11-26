package com.korea.market;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.MenuDAO;
import util.Common;
import vo.MenuVO;

@Controller
public class MenuController {

	MenuDAO menu_dao;
	
	public void setMenu_dao(MenuDAO menu_dao) {
		this.menu_dao = menu_dao;
	}
	@RequestMapping("/search.do")
	public String search(String search) {
		return "/WEB-INF/views/market/search.jsp";
	}
	@RequestMapping("/mypage.do")
	public String mypage() {
		return "/WEB-INF/views/market/mypage.jsp";
	}
	
	@RequestMapping(value= {"/", "menu.do"})
	public String list ( Model model ) {
		
		//DAO를 통해서 조회된 목록을 요청
		List<MenuVO> list = menu_dao.selectlist();
		
		model.addAttribute("m_list",list);
		
		return Common.PATH + "menu.jsp";
	}
	
	@RequestMapping("/alchol11.do")
	public String alchol11( Model model ) {
		
		//DAO를 통해서 조회된 목록을 요청
		List<MenuVO> list = menu_dao.selectlist();
		
		model.addAttribute("m_list",list);		
		
		return Common.PATH + "11.jsp";
	}
	
	@RequestMapping("/alchol12.do")
	public String alchol12( Model model ) {
		
		//DAO를 통해서 조회된 목록을 요청
		List<MenuVO> list = menu_dao.selectlist();
		
		model.addAttribute("m_list",list);		
		
		return Common.PATH + "12.jsp";
	}
	
	@RequestMapping("/alchol13.do")
	public String alchol3( Model model ) {
		
		//DAO를 통해서 조회된 목록을 요청
		List<MenuVO> list = menu_dao.selectlist();
		
		model.addAttribute("m_list",list);		
		
		return Common.PATH + "13.jsp";
	}
	
}
