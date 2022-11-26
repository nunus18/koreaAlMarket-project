package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.ProductVO;

public class ProductDAO {

	SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//상품 전체 조회
	public List<ProductVO> selectlist(){
		List<ProductVO> list = sqlSession.selectList("m.menu_list");
		return list;
	}
	
}
