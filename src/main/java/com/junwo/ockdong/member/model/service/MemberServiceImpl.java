package com.junwo.ockdong.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.junwo.ockdong.member.model.dao.MemberDAO;
import com.junwo.ockdong.member.model.vo.Member;

@Service("mService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO mDAO;

	@Override
	public Member meberLogin(Member m) {
		return mDAO.loginMember(m);
	}
	
}
