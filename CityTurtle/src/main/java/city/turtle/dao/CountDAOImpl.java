package city.turtle.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import city.turtle.vo.CountVO;
import city.turtle.vo.boardVO;

@Repository
public class CountDAOImpl implements CountDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public CountVO neckCount(String mb_id) throws Exception {
	
		return sqlSession.selectOne("city.turtle.service.CountService.neckCount", mb_id);

	}
	@Override
	public CountVO eyeCount(String mb_id) throws Exception {
		
		return sqlSession.selectOne("city.turtle.service.CountService.eyeCount", mb_id);
		
	}
}
