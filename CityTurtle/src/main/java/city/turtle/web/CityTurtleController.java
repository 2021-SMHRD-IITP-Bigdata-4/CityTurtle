package city.turtle.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
