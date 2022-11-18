package com.korea.market;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.MarketDAO;

@Controller
public class MarketController {
	MarketDAO market_dao;
	public void setMarket_dao(MarketDAO market_dao) {
		this.market_dao = market_dao;
	}
@RequestMapping(value= {"/","/market_main.do"})
public String main() {
	return "/WEB-INF/views/market/market_main.jsp";
}
	
}
