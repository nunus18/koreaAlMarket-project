package com.korea.market;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.MarketDAO;
import util.Comm;

@Controller
public class MarketController {
	MarketDAO market_dao;
	public void setMarket_dao(MarketDAO market_dao) {
		this.market_dao = market_dao;
	}
@RequestMapping(value= {"/","/market_main.do"})
public String main() {
	return Comm.PATH+"market_main.jsp";
}
	
}
