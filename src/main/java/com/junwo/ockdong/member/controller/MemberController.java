package com.junwo.ockdong.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	

}
