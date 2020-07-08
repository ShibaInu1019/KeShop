package com.zy.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zy.entity.Cartselectedmer;
import com.zy.entity.Member;
import com.zy.entity.Orders;
import com.zy.service.CartService;
import com.zy.service.OrderService;

@Controller
@RequestMapping("order")
public class OrderController {
	@Resource
	private OrderService oservice;

	@Resource
	private CartService cservice;

	@RequestMapping("order")
	public ModelAndView order(HttpSession session, HttpServletRequest req, HttpServletResponse res) {
		ModelAndView mav = new ModelAndView();
		System.out.println("-------------order-------------");
		Member m = (Member) session.getAttribute("member");
		List<Orders> olist = oservice.findOrdersByMember(m.getId());
		mav.addObject("olist", olist);
		mav.setViewName("ordersList");
		return mav;
	}

	@RequestMapping("watchOrder")
	public ModelAndView watchOrder(Integer oid, Integer cid, HttpSession session, HttpServletRequest req,
			HttpServletResponse res) {
		ModelAndView mav = new ModelAndView();
		Orders order = oservice.findOrderById(oid);
		List<Cartselectedmer> cslist = cservice.findCartSelect(cid);
		mav.addObject("order", order);
		mav.addObject("cslist", cslist);
		mav.setViewName("ordersDetail");
		return mav;
	}

	@RequestMapping("deleteOrder")
	public void deleteOrder(Integer id, HttpSession session, HttpServletRequest req, HttpServletResponse res) {
		System.out.println(id);
		int row = oservice.deleteOrder(id);
		if (row > 0) {
			try {
				res.sendRedirect(req.getContextPath()+"/order/order.action");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
