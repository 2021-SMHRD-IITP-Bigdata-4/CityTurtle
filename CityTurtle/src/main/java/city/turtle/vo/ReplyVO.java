package city.turtle.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReplyVO {

	private int rep_seq; //댓글 순번
	private int comm_seq; //원글 순번
	private String rep_content;
	private String mb_id;
	private String reg_date;
	private int like_count;

}
