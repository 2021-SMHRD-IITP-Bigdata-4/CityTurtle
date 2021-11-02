package city.turtle.mapper;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MembersVO {
	
	private String mb_id;
	private String mb_name;
	private String mb_pwd;
	private String mb_birthdate;
	private String join_date;
	private String admin_yn;
	private String mb_gender;
	private String mb_email;
	private String mb_nick;
	private String mb_yy;
	private String mb_mm;
	private String mb_dd;
	
	
}
