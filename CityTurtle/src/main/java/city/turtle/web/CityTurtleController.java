package city.turtle.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import city.turtle.mapper.KakaoLoginBO;
import city.turtle.mapper.MembersMapper;
import city.turtle.mapper.MembersVO;
import city.turtle.mapper.NaverLoginBO;

import com.github.scribejava.core.model.OAuth2AccessToken;

import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken.Payload;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;


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
	
	/* KakaoLogin */
	@Autowired
	private KakaoLoginBO kakaoLoginBO;	
			
	// 로그인페이지
	//로그인 첫 화면 요청 메소드
	
	@RequestMapping(value = "/login.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, HttpSession session) {
		
		/* 네아로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);		
		System.out.println("네이버:" + naverAuthUrl);		
		model.addAttribute("urlNaver", naverAuthUrl);
		
		/* 카카오 URL */
		String kakaoAuthUrl = kakaoLoginBO.getAuthorizationUrl(session);
		System.out.println("카카오:" + kakaoAuthUrl);		
		model.addAttribute("urlKakao", kakaoAuthUrl);		

		/* 생성한 인증 URL을 View로 전달 */
		return "login";
	}
	
	//네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "/callbackNaver.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String callbackNaver(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws Exception {
		System.out.println("로그인 성공 callbackNaver");
		OAuth2AccessToken oauthToken;
        oauthToken = naverLoginBO.getAccessToken(session, code, state);
        //로그인 사용자 정보를 읽어온다.
	    apiResult = naverLoginBO.getUserProfile(oauthToken);
	    
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObj;
		
		jsonObj = (JSONObject) jsonParser.parse(apiResult);
		JSONObject response_obj = (JSONObject) jsonObj.get("response");			
		// 프로필 조회
		String email = (String) response_obj.get("email");
		String name = (String) response_obj.get("name");
		// 세션에 사용자 정보 등록
		// session.setAttribute("islogin_r", "Y");
		session.setAttribute("signIn", apiResult);
		session.setAttribute("email", email);
		session.setAttribute("name", name);
		
        /* 네이버 로그인 성공 페이지 View 호출 */
		return "redirect:/loginSuccess.do";
	}

	// 카카오 로그인 성공시 callback
	@RequestMapping(value = "/callbackKakao.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String callbackKakao(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) 
			throws Exception {
		System.out.println("로그인 성공 callbackKako");
		OAuth2AccessToken oauthToken;
		oauthToken = kakaoLoginBO.getAccessToken(session, code, state);	
		// 로그인 사용자 정보를 읽어온다
		apiResult = kakaoLoginBO.getUserProfile(oauthToken);
		
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObj;
		
		jsonObj = (JSONObject) jsonParser.parse(apiResult);
		JSONObject response_obj = (JSONObject) jsonObj.get("kakao_account");	
		JSONObject response_obj2 = (JSONObject) response_obj.get("profile");
		// 프로필 조회
		String email = (String) response_obj.get("email");
		String name = (String) response_obj2.get("nickname");
		// 세션에 사용자 정보 등록
		// session.setAttribute("islogin_r", "Y");
		session.setAttribute("signIn", apiResult);
		session.setAttribute("email", email);
		session.setAttribute("name", name);

		return "redirect:/loginSuccess.do";
	}


	// 소셜 로그인 성공 페이지
	@RequestMapping("/loginSuccess.do")
	public String loginSuccess() {
		return "loginSuccess";
	}
	
	// 사이트 내 로그인
	@RequestMapping("/signIn.do")
	public String signIn(MembersVO vo, HttpServletRequest request) {
		MembersVO signIn = mapper.signIn(vo);
		HttpSession session = request.getSession();				
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
	public String insertMembers(MembersVO vo, HttpServletRequest request) {
		mapper.insertMembers(vo);
		MembersVO signUp = mapper.signIn(vo);
		HttpSession session = request.getSession();
		session.setAttribute("signUp", signUp);		
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
	// 회원 정보 수정 페이지
	@RequestMapping("/userUpdate.do")
	public String userUpdate() {
		return "userUpdate";
	}
	// 회원 정보 수정
	@RequestMapping("/updateMembers.do")
	public String updateMembers(MembersVO vo) {
		mapper.updateMembers(vo);
		return "redirect:/index.do";
	}	
	
	
	// 메인 페이지
	@RequestMapping("/index.do")
	public String index() {
		return "index";
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
	
	// 이벤트 페이지에서 클릭시 이동
		@RequestMapping("/EventClick2.do")
		public String EventClick2() {
			return "EventClick2";
		}

		// 이벤트 페이지에서 클릭시 이동
		@RequestMapping("/EventClick3.do")
		public String EventClick3() {
			return "EventClick3";
		}
		// 이벤트 페이지에서 클릭시 이동
		@RequestMapping("/EventClick4.do")
		public String EventClick4() {
			return "EventClick4";
		}
		// 이벤트 페이지에서 클릭시 이동
		@RequestMapping("/EventClick5.do")
		public String EventClick5() {
			return "EventClick5";
		}
		// 이벤트 페이지에서 클릭시 이동
		@RequestMapping("/EventClick6.do")
		public String EventClick6() {
			return "EventClick6";
		}
	
	// 그래프 페이지
	@RequestMapping("/service.do")
	public String service() {
		return "service";
	}
	
	// 댓글 페이지
	@RequestMapping("/boardComment.do")
	public String boardComment() {
		return "boardComment";
	}
	
	// 파일 다운로드
	@RequestMapping("/download.do")
	public void download(HttpServletResponse response) throws Exception {
        try {
        	String path = "C:\\uploadFile\\IU.jpg"; // 경로에 접근할 때 역슬래시('\') 사용
        	
        	File file = new File(path);
        	response.setHeader("Content-Disposition", "attachment;filename=" + file.getName()); // 다운로드 되거나 로컬에 저장되는 용도로 쓰이는지를 알려주는 헤더
        	
        	FileInputStream fileInputStream = new FileInputStream(path); // 파일 읽어오기 
        	OutputStream out = response.getOutputStream();
        	
        	int read = 0;
                byte[] buffer = new byte[1024];
                while ((read = fileInputStream.read(buffer)) != -1) { // 1024바이트씩 계속 읽으면서 outputStream에 저장, -1이 나오면 더이상 읽을 파일이 없음
                    out.write(buffer, 0, read);
                }
                
        } catch (Exception e) {
            throw new Exception("download error");
        } 
    } // https://jforj.tistory.com/134



}
