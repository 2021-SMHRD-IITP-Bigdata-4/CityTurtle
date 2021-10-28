package city.turtle.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import city.turtle.vo.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO{
	@Inject
	private SqlSession sqlSession;
	
	

	@Override
	public List<ReplyVO> getReplyList(int comm_seq) throws Exception {
		return sqlSession.selectList("city.turtle.service.ReplyService.getReplyList",comm_seq);
	}

	

	

}
