package city.turtle.service;

import java.util.List;

import city.turtle.vo.ReplyVO;

public interface ReplyService {
	
	// 댓글 조회
	public List<ReplyVO> readReply(int not_seq) throws Exception;
	
	// 댓글 작성
	public void replyInsert(ReplyVO VO) throws Exception;
		
		
}
