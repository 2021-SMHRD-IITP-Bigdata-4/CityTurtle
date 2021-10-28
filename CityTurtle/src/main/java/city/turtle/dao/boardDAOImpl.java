package city.turtle.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



import city.turtle.vo.boardVO;

@Repository
public class boardDAOImpl implements boardDAO {

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<boardVO> boardList() throws Exception {
		
		return sqlSession.selectList("city.turtle.service.boardService.boardList");
	}

	@Override
	public void boardInsert(boardVO VO) throws Exception {
		sqlSession.insert("city.turtle.service.boardService.boardInsert", VO);
		
	}

	@Override
	public boardVO boardDetails(int not_seq) throws Exception {
		return sqlSession.selectOne("city.turtle.service.boardService.boardDetails",not_seq);
	}

	@Override
	public void boardUpdate(boardVO VO) throws Exception {
		sqlSession.update("city.turtle.service.boardService.boardUpdate",VO);
		
	}

	@Override
	public void boardDelete(int not_seq) throws Exception {
		sqlSession.delete("city.turtle.service.boardService.boardDelete",not_seq);
		
	}

	@Override
	public int count() throws Exception {
		
		return sqlSession.selectOne("city.turtle.service.boardService.count");
	}

	// 게시물 목록 + 페이징
	@Override
	public List<boardVO> listPage(int displayPost, int postNum) throws Exception {

	 HashMap<String, Integer> data = new HashMap<String, Integer>();
	  
	 data.put("displayPost", displayPost);
	 data.put("postNum", postNum);
	  
	 return sqlSession.selectList("city.turtle.service.boardService.listPage", data);
	}
	


	
	

}
