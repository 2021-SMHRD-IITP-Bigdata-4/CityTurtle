package city.turtle.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import city.turtle.dao.ReplyDAO;
import city.turtle.vo.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService{
	
	
	@Inject
	private ReplyDAO dao;

	// 댓글 조회
	@Override
	public List<ReplyVO> getReplyList(int comm_seq) throws Exception {
		return dao.getReplyList(comm_seq);
	}

	
}
