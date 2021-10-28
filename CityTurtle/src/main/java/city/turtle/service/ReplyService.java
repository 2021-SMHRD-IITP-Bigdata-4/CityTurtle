package city.turtle.service;

import java.util.List;

import city.turtle.vo.ReplyVO;

public interface ReplyService {
	
	// 댓글 조회
	public List<ReplyVO> getReplyList(int comm_seq) throws Exception;
		
		
}
