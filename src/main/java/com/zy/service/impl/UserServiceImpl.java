package com.zy.service.impl;


import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zy.entity.Member;
import com.zy.mapper.MemberMapper;
import com.zy.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Resource
	private MemberMapper mapper;


	@Override
	public Member login(Member m) {
		// TODO Auto-generated method stub
		return mapper.login(m);
	}


	@Override
	public int register(Member m) {
		// TODO Auto-generated method stub
		Member member = m;
		member.setRegdate(new Date());
		member.setMemberlevel(1);
		return mapper.insertSelective(member);
	}


	@Override
	public int edit(Member m) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKeySelective(m);
	}

	

}
