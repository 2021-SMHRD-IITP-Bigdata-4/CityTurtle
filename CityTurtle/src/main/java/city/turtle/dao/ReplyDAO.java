package city.turtle.dao;

import java.util.List;

import city.turtle.vo.ReplyVO;
import city.turtle.vo.boardVO;

public interface ReplyDAO {

		// 댓글 조회
		public List<ReplyVO> readReply(int not_seq) throws Exception;
		// 댓글 작성
		public void replyInsert(ReplyVO VO) throws Exception;
		
	
}
