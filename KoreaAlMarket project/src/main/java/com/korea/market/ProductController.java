package com.korea.market;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.ProductDAO;
import util.Common;
import vo.ProductVO;

@Controller
public class ProductController {

	ProductDAO product_dao;
	
	public void setProduct_dao(ProductDAO product_dao) {
		this.product_dao = product_dao;
	}
	
	@RequestMapping(value= {"/product.do"})
	public String list ( Model model ) {
		
		//DAO를 통해서 조회된 목록을 요청
		List<ProductVO> list = product_dao.selectlist();
		
		model.addAttribute("p_list",list);
		
		return Common.P_PATH + "detailPage.jsp";
	}
}