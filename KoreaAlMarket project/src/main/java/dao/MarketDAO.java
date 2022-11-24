package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.MarketVO;

public class MarketDAO {
	SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	public List<MarketVO> selectList() {
		List<MarketVO> list = sqlSession.selectList("m.product_list");
		return list;
	}
}
