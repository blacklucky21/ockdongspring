package com.junwo.ockdong.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.junwo.ockdong.member.exception.MemberException;
import com.junwo.ockdong.member.model.service.MemberService;
import com.junwo.ockdong.member.model.vo.Member;

@SessionAttributes("loginUser")
@Controller
public class MemberController {
	
	@Autowired 
	private MemberService mService;
	
	@Autowired 
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	private Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	// 로그인용 컨트롤러
	// 로그인 페이지 이동
	@RequestMapping("loginView.me")
	public String loginView() {
		return "member/login";
	}
	// 로그인 눌럿을 경우 처리해주는 메소드
	@RequestMapping(value="login.me", method= RequestMethod.POST)
	public String memberLogin(Member m, Model model) {
		
		Member loginUser = mService.meberLogin(m);
		
		if(bCryptPasswordEncoder.matches(m.getPassword(), loginUser.getPassword())) {
			model.addAttribute("loginUser", loginUser);
		}else {
			throw new MemberException("로그인에 실패 하였습니다.");
		}
		
		return "home";
	}
	
	// 회원 가입용 컨트롤러
	// 회원 가입 페이지 이동
	@RequestMapping("enrollView.me")
	public String enrollView() {
		return "member/memberJoin";
	}
	// 약관 동의 후 가입 눌렀을 경우 처리해주는 메소드
	@RequestMapping("memberJoin.me")
	public String memberJoin(@ModelAttribute Member m,
							 @RequestParam("address1") String address1,
							 @RequestParam("address2") String address2,
							 @RequestParam("address3") String address3,
							 @RequestParam("address4") String address4) {
		String encPwd = bCryptPasswordEncoder.encode(m.getPassword());
		m.setPassword(encPwd);
		m.setAddress(address1 + "/" + address2 + "/" + address3 + "/" + address4);
		
		int result = mService.memberJoin(m);
		if (result > 0) {
			return "home";
		}else {
			throw new MemberException("회원가입에 실패 하였습니다.");
		}
	}
	

}
