package city.turtle.dao;

import city.turtle.vo.CountVO;

public interface CountDAO {
	
	public CountVO neckCount(String mb_id) throws Exception;
	
	public CountVO eyeCount(String mb_id) throws Exception;
	
}
