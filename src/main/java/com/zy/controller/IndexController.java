package com.zy.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.zy.entity.Category;
import com.zy.entity.Merchandise;
import com.zy.service.IndexService;

@Controller
@RequestMapping("index")
public class IndexController {

	@Resource
	private IndexService service;

	@ResponseBody
	@RequestMapping("index")
	public String index() {
		List<Category> list = service.selectAll();
		return JSON.toJSONString(list);
	}

	@ResponseBody
	@RequestMapping("mer")
	public String Mer() {
		List<Merchandise> list = service.selectMerAll();
		return JSON.toJSONString(list);
	}


	@RequestMapping("details")
	public ModelAndView details(Integer id) {
		System.out.println(id);
		Merchandise m = service.selectById(id);
		ModelAndView mav = new ModelAndView();
		mav.addObject(m);
		mav.setViewName("merchandiseDetail");
		return mav;
	}
	
	
	@RequestMapping("more")
	public ModelAndView more(Integer special) {
		System.out.println(special);
		List<Merchandise> merlist = service.selectBySpecial(special);
		ModelAndView mav = new ModelAndView();
		mav.addObject("merlist",merlist);
		mav.addObject("special",special);
		mav.setViewName("merchandiseList");
		return mav;
	}
	
	@ResponseBody
	@RequestMapping("category")
	public String category() {
		List<Category> clist = service.selectAll();
		return JSON.toJSONString(clist);
	}
	
	
	@RequestMapping("findMerListById")
	public ModelAndView findMerListById(String nameKey,String selKey,HttpSession session) {
		System.out.println(nameKey);
		System.out.println(selKey);
		int  special = 2;
		ModelAndView mav = new ModelAndView();
		List<Merchandise> merlist = service.findMerListById(nameKey,selKey);
		mav.addObject("merlist",merlist);
		mav.addObject("special",special);
		session.setAttribute("nameKey",nameKey);
		session.setAttribute("selKey",selKey);
		mav.setViewName("merchandiseList");
		return mav;
	}
	

}
