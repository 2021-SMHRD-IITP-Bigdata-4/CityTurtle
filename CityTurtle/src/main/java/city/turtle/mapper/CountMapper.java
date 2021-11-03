package city.turtle.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import city.turtle.vo.CountVO;

@Mapper
public interface CountMapper {
	
	public CountVO neckCount(String mb_id);
	
}
