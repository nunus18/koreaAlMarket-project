package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import vo.MenuVO;

public class MenuDAO {

	SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//추천 조회
	public List<MenuVO> recolist(){
		List<MenuVO> list = sqlSession.selectList("m.reco_list");
		return list;
	}
	
	//메뉴 전체 조회
	public List<MenuVO> selectlist(){
		List<MenuVO> list = sqlSession.selectList("m.menu_list");
		return list;
	}
	// 검색어 입력조회
	public List<MenuVO> search(Map<String, Object> map) {
		List<MenuVO> list = sqlSession.selectList("m.search", map);
		return list;
	}
}
