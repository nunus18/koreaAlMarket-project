package com.korea.market;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.UserDAO;
import util.Comm;
import vo.UserVO;

@Controller
public class UserController {
	private UserDAO user_dao;
	private BCryptPasswordEncoder passwordEncoder;
	
	
	public UserController(UserDAO user_dao) {
		this.user_dao = user_dao;
		passwordEncoder = new BCryptPasswordEncoder();
	}
	
	@RequestMapping(value = {"/", "main.do"})
	public String main() {
		return Comm.M_PATH + "market_main.jsp";
	}
	
	//로그인 페이지
	@RequestMapping(value = "login.do")
	public String login() {
		return Comm.U_PATH + "login.jsp";
	}
	
	//로그인 
	@RequestMapping("verify_login.do")
	public String verify_login(String id, String pw, HttpServletRequest request) {
		UserVO vo = user_dao.selectOne(id);
		HttpSession session =request.getSession();	
		
		String result = "iv_id";
		
		if(vo != null) {
			
			if(passwordEncoder.matches(pw, vo.getPw())) {
				session.setAttribute("vo", vo);
				return "redirect:main.do";
			} else {
				result = "iv_pw";
			}
		}
		
		session.setAttribute("input_id", id);
		session.setAttribute("input_pw", pw);
		session.setAttribute("login_result", result);
		return "redirect:login.do";
	}
	
	//signup 폼으로 
	@RequestMapping("signup_form.do")
	public String signup_form() {
		return Comm.U_PATH + "signup.jsp";
	}
	
	//signup
	@RequestMapping("signup.do")
	public String signup(UserVO vo) {
		
		vo.setPw(passwordEncoder.encode(vo.getPw()));
		int res = user_dao.insert(vo);
		
		
		return "redirect:main.do";
	}
	
	//id 중복확인
	@RequestMapping("checkID.do") 
	@ResponseBody
	public String checkID(String id) {
		String res = user_dao.checkID(id);
		
		String result = "exists";
		if(res == null) {
			result = "d_exists";
		}
		return result;
	}
	
	//email 중복확인
	@RequestMapping("checkEmail.do")
	@ResponseBody
	public String checkEmail(String email) {
		String res = user_dao.checkEmail(email);
		
		String result = "exists";
		if(res == null) {
			result = "d_exists";
		}
		return result;
	}
	
	//아이디 찾기
	@RequestMapping("find/id.do")
	public String find_id() {
		return Comm.U_PATH + "findID.jsp";
	}
}









