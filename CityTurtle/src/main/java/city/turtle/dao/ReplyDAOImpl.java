package city.turtle.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import city.turtle.vo.ReplyVO;
import city.turtle.vo.boardVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO{
	@Inject
	private SqlSession sqlSession;
	
	

	@Override
	public List<ReplyVO> readReply(int not_seq) throws Exception {
		return sqlSession.selectList("city.turtle.service.ReplyService.getReplyList",not_seq);
	}



	@Override
	public void replyInsert(ReplyVO VO) throws Exception {
		sqlSession.insert("city.turtle.service.ReplyService.replyInsert", VO);
		
	}

	

	

}
