package com.zy.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zy.entity.Member;
import com.zy.service.CartService;
import com.zy.service.UserService;

@Controller
@RequestMapping("login")
public class LoginController {

	@Resource
	private UserService service;

	
	@Resource
	private CartService cservice;
	
	@RequestMapping("doLogin")
	public void doLogin(Member m, HttpSession session,HttpServletRequest req,HttpServletResponse res) {
		System.out.println(m.getLoginname());
		Member member = service.login(m);
		session.setAttribute("member", member);
		if (member == null) {
			session.setAttribute("msg", "�û������������");
		}
		try {
			//req.getRequestDispatcher("/jsp/index").forward(req, res);
			res.sendRedirect(req.getContextPath()+"/index.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	@RequestMapping("register")
	public void register(Member m, HttpSession session, HttpServletRequest req, HttpServletResponse res) {
		int row = service.register(m);
		if(row==1) {
			session.setAttribute("message","ע��ɹ�!");
		}else {
			session.setAttribute("message","ע��ʧ��!");
		}
		try {
			res.sendRedirect(req.getContextPath()+"/jsp/memberRegister.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping("noSession")
	public ModelAndView noSession() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("noSession");
		mav.addObject("msg","�����Ƚ��е�¼!");
		return mav;
	}
	
	@RequestMapping("doLogout")
	public void doLogout(HttpSession session,HttpServletRequest req,HttpServletResponse res) {
		//sessionʧЧ
		session.invalidate();
		try {
			res.sendRedirect(req.getContextPath());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	@RequestMapping("edit")
	public void edit(Member m, HttpSession session,HttpServletRequest req,HttpServletResponse res) {
		System.out.println(m);
		int row = service.edit(m);
		if(row==1) {
			session.setAttribute("message","�޸ĳɹ�!");
		}else {
			session.setAttribute("message","�޸�ʧ��!");
		}
		try {
			//req.getRequestDispatcher("/jsp/index").forward(req, res);
			res.sendRedirect(req.getContextPath()+"/jsp/memberUpdate.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
