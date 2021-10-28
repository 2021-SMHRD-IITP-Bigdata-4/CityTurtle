package city.turtle.service;

import java.util.List;



import city.turtle.vo.boardVO;


public interface boardService {
		//목록
		public List<boardVO> boardList() throws Exception;
		// 삽입
		public void boardInsert(boardVO VO) throws Exception;
		//상세보기
		public boardVO boardDetails(int not_seq) throws Exception;
		//수정
		public void boardUpdate(boardVO VO) throws Exception;
		// 삭제
		public void boardDelete(int not_seq) throws Exception;
		// 게시물 총 갯수
		public int count() throws Exception;
		// 게시물 목록 + 페이징
		public List<boardVO> listPage(int displayPost, int postNum) throws Exception;
		
		
}
