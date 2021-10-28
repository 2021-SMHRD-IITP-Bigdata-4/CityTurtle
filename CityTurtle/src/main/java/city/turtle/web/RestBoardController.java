package city.turtle.web;

import java.util.List;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import city.turtle.service.ReplyService;
import city.turtle.vo.ReplyVO;



@RestController
public class RestBoardController {
	@Inject

	private ReplyService service;

	

	@RequestMapping("/getReqlyList.do")

	public List<ReplyVO> getReplyList(int comm_Seq) throws Exception {

		return service.getReplyList(comm_Seq);

	}




	
	
	
	

}
