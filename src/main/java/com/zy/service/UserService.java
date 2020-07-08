package com.zy.service;

import com.zy.entity.Member;

public interface UserService {

	Member login(Member m);

	int register(Member m);

	int edit(Member m);




}
