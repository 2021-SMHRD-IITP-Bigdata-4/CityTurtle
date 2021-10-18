package city.turtle.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MembersMapper {
	
	public void insertMembers(MembersVO vo);
}
