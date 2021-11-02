package city.turtle.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReplyVO {

	private int com_seq; //댓글 순번
	private int not_seq; //원글 순번
	private String com_content; // 댓글 내용
	private String com_date; // 댓글 날짜
	private String mb_id; // 댓글 쓴 아이디
	private int com_like; // 좋아요 수

}
