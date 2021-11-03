package city.turtle.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CountVO {
	
	private int pos_seq;
	private String pos_type;
	private Date pose_time;
	private int pos_count;
	private String mb_id;

}
