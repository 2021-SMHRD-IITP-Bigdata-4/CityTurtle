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

	// ๋๊ธ ์กฐํ
	@Override
	public List<ReplyVO> readReply(int not_seq) throws Exception {
		return dao.readReply(not_seq);
	}

	@Override
	public void replyInsert(ReplyVO VO) throws Exception {
		dao.replyInsert(VO);
		
	}

	

	
}
