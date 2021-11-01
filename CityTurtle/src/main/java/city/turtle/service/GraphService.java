package city.turtle.service;

import java.util.List;

import city.turtle.vo.GraphVO;

public interface GraphService {
	
	// 거북목, 눈깜빡임 카운트
	public List<GraphVO> countTurtle(GraphVO vo) throws Exception;
	
}
