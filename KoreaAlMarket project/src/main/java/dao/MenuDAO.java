package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.MenuVO;

public class MenuDAO {

	SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//메뉴 전체 조회
	public List<MenuVO> selectlist(){
		List<MenuVO> list = sqlSession.selectList("m.menu_list");
		return list;
	}
	
}
