package city.turtle.service;

import city.turtle.vo.CountVO;

public interface CountService {

	public CountVO neckCount(String mb_id) throws Exception;
	
	public CountVO eyeCount(String mb_id) throws Exception;
	
}
