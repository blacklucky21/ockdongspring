package com.junwo.ockdong.member.model.service;

import com.junwo.ockdong.member.model.vo.Member;

public interface MemberService {

	Member meberLogin(Member m);

	int memberJoin(Member m);

}
