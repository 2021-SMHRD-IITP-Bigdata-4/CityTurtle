package city.turtle.service;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import city.turtle.dao.CountDAO;
import city.turtle.vo.CountVO;

@Service
public class CountServiceImpl implements CountService {

	@Inject
	private CountDAO dao;
	
	@Override
	public CountVO neckCount(String mb_id) throws Exception {

		return dao.neckCount(mb_id);
	}
	@Override
	public CountVO eyeCount(String mb_id) throws Exception {
		
		return dao.neckCount(mb_id);
	}
}
