package city.turtle.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import city.turtle.mapper.MembersMapper;
import city.turtle.mapper.MembersVO;
import city.turtle.mapper.NaverLoginBO;

import com.github.scribejava.core.model.OAuth2AccessToken;


@Controller
public class CityTurtleController {
	
	@Autowired 
	private MembersMapper mapper;
	
	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}
	
	/* GoogleLogin */
	@Autowired
	private GoogleConnectionFactory googleConnectionFactory;
	@Autowired
	private OAuth2Parameters googleOAuth2Parameters;

	
	// 로그인페이지
	//로그인 첫 화면 요청 메소드
	
	@RequestMapping(value = "/login.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, HttpSession session) {
		
		/* 네아로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);		
		//https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=2h3X9WHxJSgNBE7HJo3Q&
		//redirect_uri=http%3A%2F%2Flocalhost%3A8081%2Fweb%2FcallbackNaver.do&state=791f3cbc-b99a-4ac7-9fb1-7c5b5132c23a
		System.out.println("네이버:" + naverAuthUrl);		
		
		/* 구글code 발행 */
		OAuth2Operations oauthOperations = googleConnectionFactory.getOAuthOperations();
		String urlGoogle = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, googleOAuth2Parameters);
		System.out.println("구글:" + urlGoogle);

		//네이버 
		model.addAttribute("urlNaver", naverAuthUrl);
		//구글
		model.addAttribute("urlGoogle", urlGoogle);
		

		/* 생성한 인증 URL을 View로 전달 */
		return "login";
	}
	
	//네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "/callbackNaver.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String callbackNaver(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException {
		System.out.println("로그인 성공 callbackNaver");
		OAuth2AccessToken oauthToken;
        oauthToken = naverLoginBO.getAccessToken(session, code, state);
        //로그인 사용자 정보를 읽어온다.
	    apiResult = naverLoginBO.getUserProfile(oauthToken);
		model.addAttribute("result", apiResult);
		session.setAttribute("signIn", apiResult);
        /* 네이버 로그인 성공 페이지 View 호출 */
		return "loginSuccess";
	}
	
	// 구글 callback호출 메소드
	@RequestMapping(value = "/callbackGoogle.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String googleCallback(Model model, @RequestParam String code) throws IOException {
		System.out.println("로그인 성공 callbackGoogle");

		return "loginSuccess";
	}


	
	// 로그인
	@RequestMapping("/signIn.do")
	public String signIn(MembersVO vo, HttpServletRequest request) {
		MembersVO signIn = mapper.signIn(vo);
		HttpSession session =request.getSession();				
		if (signIn != null) {
			session.setAttribute("signIn", signIn);
			return "redirect:/index.do";
		} else {
			session.setAttribute("signIn", null);
			return "redirect:/login.do";
		}
	}
	// 로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login.do";
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
	// 회원가입 성공 페이지
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
