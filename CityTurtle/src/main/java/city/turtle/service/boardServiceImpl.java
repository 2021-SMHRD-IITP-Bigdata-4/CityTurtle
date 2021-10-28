package city.turtle.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import city.turtle.dao.boardDAO;


import city.turtle.vo.boardVO;

@Service
public class boardServiceImpl implements boardService {
	
	@Inject
	private boardDAO dao;
	

	
	@Override
	public List<boardVO> boardList() throws Exception{
		return dao.boardList();
	}



	@Override
	public void boardInsert(boardVO VO) throws Exception {
		dao.boardInsert(VO);		
	}



	@Override
	public boardVO boardDetails(int not_seq) throws Exception {
		return dao.boardDetails(not_seq);
	}



	@Override
	public void boardUpdate(boardVO VO) throws Exception {
		dao.boardUpdate(VO);
		
	}



	@Override
	public void boardDelete(int not_seq) throws Exception {
		dao.boardDelete(not_seq);
		
	}



	@Override
	public int count() throws Exception {
		
		return dao.count();
	}

	// 게시물 목록 + 페이징
	@Override
	public List<boardVO> listPage(int displayPost, int postNum) throws Exception {
		return dao.listPage(displayPost, postNum);
	}
	
	


	



}
