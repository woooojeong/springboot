package com.springboot.mycgv.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.mycgv.dto.MemberDto;
import com.springboot.mycgv.mapper.MemberMapper;

@Service
public class MemberService {

	@Autowired
	private MemberMapper memberDao;
	
	public int join(MemberDto memberDto) {
		return memberDao.join(memberDto);
	}
	
	public int login(MemberDto memberDto) {
		return memberDao.login(memberDto);
	}
	
}



