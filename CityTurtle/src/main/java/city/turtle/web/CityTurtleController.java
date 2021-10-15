package city.turtle.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CityTurtleController {
	
	@RequestMapping("/login.do")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/signUp.do")
	public String signUp() {
		return "signUp";
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
