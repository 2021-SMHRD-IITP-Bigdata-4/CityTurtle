package city.turtle.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import city.turtle.vo.GraphVO;

public interface GraphService {
	
	// 거북목, 눈깜빡임 카운트
	public List<GraphVO> countTurtle(GraphVO vo) throws Exception;
	
	// 주간 카운트
	public int countSum(@Param("vo")GraphVO vo, @Param("num1")int num1) throws Exception;
	
}
