package city.turtle.web;

import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

import javax.inject.Inject;

import org.apache.ibatis.javassist.bytecode.Mnemonic;
import org.apache.taglibs.standard.tag.common.core.RemoveTag;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import city.turtle.service.ReplyService;
import city.turtle.service.boardService;
import city.turtle.vo.Page;
import city.turtle.vo.ReplyVO;
import city.turtle.vo.boardVO;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.extern.java.Log;
import lombok.extern.log4j.Log4j;



@Controller
@RequestMapping("/board*")
public class boardController {

	

	@Inject
	private boardService service;
	
	@Inject
	private ReplyService replyService;
	

	@GetMapping("boardList.do")
	public void boardList(Model model) throws Exception{
		List<boardVO> list = null; 
		list = service.boardList();
		model.addAttribute("list", list);

	}
	
	@RequestMapping("/boardWrite.do")
	public void boardWrite() {
		// return "boardWrite";		
	}
	
	@RequestMapping("/boardInsert.do")
	public String boardInsert(boardVO VO) throws Exception { // BoardVO = New BoardVO();
		service.boardInsert(VO);
		//저장이 성공후에는
		return "redirect:/boardList.do";

	}
	
	@RequestMapping("/boardDetails.do")
	public void boardDetails(int not_seq,Model model) throws Exception { // BoardVO = New BoardVO();
		boardVO vo = service.boardDetails(not_seq);
		model.addAttribute("vo",vo); // 객체 바운딩 중요!!
		model.addAttribute("replyVO", new ReplyVO());
		// return "boardDetails";

	}

	@RequestMapping("/boardUpdate.do")
	public String boardUpdate(boardVO VO) throws Exception { // BoardVO = New BoardVO();
		service.boardUpdate(VO);
		 return "redirect:/boardList.do";

	}
	
	@RequestMapping("/boardDelete.do")
	public String boardDelete(int not_seq) throws Exception { // BoardVO = New BoardVO();
		service.boardDelete(not_seq);
		 return "redirect:/boardList.do";

	}
	
	// 게시물 목록 + 페이징 추가
	
	@RequestMapping("/boardListPage.do")
	public void boardListPage(Model model, @RequestParam("num") int num) throws Exception {
	 

		Page page = new Page();
		
		page.setNum(num);
		page.setCount(service.count());		
		
		List<boardVO> list = null; 
		list = service.listPage(page.getDisplayPost(), page.getPostNum());
		
		model.addAttribute("list", list);
		
		/*
		model.addAttribute("pageNum", page.getPageNum());
		
		model.addAttribute("startPageNum", page.getStartPageNum());
		model.addAttribute("endPageNum", page.getEndPageNum());
		 
		model.addAttribute("prev", page.getPrev());
		model.addAttribute("next", page.getNext());
		*/
		
		model.addAttribute("page", page);
		
		model.addAttribute("select", num);
		
		/*
		// 게시물 총 갯수
		int count = service.count();
		
		// 한 페이지에 출력할 게시물 갯수
		int postNum = 10;
		
		// 하단 페이징 번호 ([ 게시물 총 갯수 ÷ 한 페이지에 출력할 갯수 ]의 올림)
		int pageNum = (int)Math.ceil((double)count/postNum);
		
		// 출력할 게시물
		int displayPost = (num - 1) * postNum;
					
		
		// 한번에 표시할 페이징 번호의 갯수
		int pageNum_cnt = 10;
		
		// 표시되는 페이지 번호 중 마지막 번호
		int endPageNum = (int)(Math.ceil((double)num / (double)pageNum_cnt) * pageNum_cnt);
		
		// 표시되는 페이지 번호 중 첫번째 번호
		int startPageNum = endPageNum - (pageNum_cnt - 1);
		// 마지막 번호 재계산
		int endPageNum_tmp = (int)(Math.ceil((double)count / (double)pageNum_cnt));
			
		if(endPageNum > endPageNum_tmp) {
			endPageNum = endPageNum_tmp;
		}
		
		boolean prev = startPageNum == 1 ? false : true; 
		boolean next = endPageNum * pageNum_cnt >= count ? false : true;
		
		List<BoardVO> list = null; 
		list = service.listPage(displayPost, postNum);
		model.addAttribute("list", list);		 
		model.addAttribute("pageNum", pageNum);
		
		// 시작 및 끝 번호
		model.addAttribute("startPageNum", startPageNum);
		model.addAttribute("endPageNum", endPageNum);
		// 이전 및 다음 
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);		 
		
		// 현재 페이지
		model.addAttribute("select", num);
		*/
		
	}
	
	

	
	
	
	

}
