package city.turtle.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MembersMapper {
	
	public void insertMembers(MembersVO vo);
	public int mbidCheck(String mb_id);
	public MembersVO signIn(MembersVO vo);
	public void updateMembers(MembersVO vo);
}

