package city.turtle.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import city.turtle.mapper.MembersMapper;
import city.turtle.mapper.MembersVO;

@Controller
public class CityTurtleController {
	
	@Autowired 
	private MembersMapper mapper;
	
	// 로그인페이지
	@RequestMapping("/login.do")
	public String login() {
		return "login";
	}
	
	// 회원가입 페이지
	@RequestMapping("/signUp.do")
	public String signUp() {
		return "signUp";
	}
	// 회원가입
	@RequestMapping("/insertMembers.do")
	public String insertMembers(MembersVO vo) {
		mapper.insertMembers(vo);
		return "redirect:/signUpSuccess.do";
	}
	// 아이디 중복체크
	@RequestMapping("/mbidCheck.do")
	public @ResponseBody int mbidCheck(String mb_id) {
		int result = mapper.mbidCheck(mb_id);
		return result;
	}
	// 회원가입 성공
	@RequestMapping("/signUpSuccess.do")
	public String signUpSuccess() {
		return "signUpSuccess";
	}

	@RequestMapping("/userUpdate.do")
	public String userUpdate() {
		return "userUpdate";
	}

	@RequestMapping("/competition.do")
	public String competition() {
		return "competition";
	}
	
	@RequestMapping("/index.do")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/about.do")
	public String about() {
		return "about";
	}
	
	@RequestMapping("/contact.do")
	public String contact() {
		return "contact";
	}
	
	@RequestMapping("/pricing.do")
	public String pricing() {
		return "pricing";
	}
	
	@RequestMapping("/work.do")
	public String work() {
		return "work";
	}
	// 이벤트 페이지
	@RequestMapping("/Event.do")
	public String Event() {
		return "Event";
	}
	// 이벤트 페이지에서 클릭시 이동
	@RequestMapping("/EventClick.do")
	public String EventClick() {
		return "EventClick";
	}
	// 공지사항 목록 페이지
	@RequestMapping("/boardList.do")
	public String boardList() {
		return "boardList";
	}
	// 공지사항 글쓰기 페이지
	@RequestMapping("/boardWrite.do")
	public String boardWrite() {
		return "boardWrite";
	}
	
	@RequestMapping("/boardDetails.do")
	public String boardDetails() {
		return "boardDetails";
	}
	
	@RequestMapping("/service.do")
	public String service() {
		return "service";
	}
	
}
