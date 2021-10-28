package city.turtle.dao;

import java.util.List;

import city.turtle.vo.ReplyVO;

public interface ReplyDAO {

		// 댓글 조회
		public List<ReplyVO> getReplyList(int comm_seq) throws Exception;
		
		
	
}
