package city.turtle.service;

import java.util.List;

import city.turtle.vo.GraphVO;

public interface GraphService {
	
	// 거북목, 눈깜빡임 카운트
	public List<GraphVO> countTurtle(GraphVO vo) throws Exception;
	
	// 주간 카운트
	public int countSum(GraphVO vo) throws Exception; // 1주
	public int countSum2(GraphVO vo) throws Exception; // 2주
	public int countSum3(GraphVO vo) throws Exception; // 3주
	public int countSum4(GraphVO vo) throws Exception; // 4주
	
}
