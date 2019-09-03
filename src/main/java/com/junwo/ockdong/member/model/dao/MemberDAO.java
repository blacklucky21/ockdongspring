package com.junwo.ockdong.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.junwo.ockdong.member.model.vo.Member;

@Repository("mDAO")
public class MemberDAO {
	
	@Autowired SqlSessionTemplate sqlSession;

	public Member loginMember(Member m) {
		return (Member)sqlSession.selectOne("memberMapper.loginMember", m);
	}

	public int memberJoin(Member m) {
		return sqlSession.insert("memberMapper.memberJoin", m);
	}

}
