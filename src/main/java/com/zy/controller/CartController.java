package com.zy.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zy.entity.Cart;
import com.zy.entity.Cartselectedmer;
import com.zy.entity.Member;
import com.zy.entity.Menberlever;
import com.zy.entity.Merchandise;
import com.zy.entity.Orders;
import com.zy.service.CartService;
import com.zy.service.IndexService;
import com.zy.service.OrderService;

@Controller
@RequestMapping("cart")
public class CartController {

	@Resource
	private CartService cservice;
	@Resource
	private IndexService iservice;
	@Resource
	private OrderService oservice;

	@RequestMapping("cart")
	public ModelAndView cart(HttpSession session, HttpServletRequest req, HttpServletResponse res) {
		// TODO Auto-generated method stub
		System.out.println("-------------------cart-----------------");
		ModelAndView mav = new ModelAndView();
		Member m = (Member) session.getAttribute("member");
		Cart cart = cservice.selectById(m.getId());
		List<Cartselectedmer> list = cservice.findCartSelect(cart.getId());
		mav.addObject("merCart", list);
		mav.addObject("cart", cart);
		session.setAttribute("cart", cart);
		mav.setViewName("cartList");
		return mav;
	}

	@RequestMapping("insertCart")
	public ModelAndView insertCart(Integer id, HttpSession session, HttpServletRequest req, HttpServletResponse res) {
		// TODO Auto-generated method stub
		System.out.println(id);
		ModelAndView mav = new ModelAndView();
		Merchandise mer = iservice.selectById(id);
		// 插入Cartselectedmer
		Cartselectedmer csdm = new Cartselectedmer();
		Member m = (Member) session.getAttribute("member");
		Cart c = cservice.selectById(m.getId());
		Menberlever ml = cservice.selectByLever(c.getMember());
		Cartselectedmer csd = cservice.selectFromCart(c.getId(), id);
		if (csd == null) {
			// 不存在商品就添加
			BigDecimal ad = new BigDecimal(Double.toString(0.01));
			// 计算特价
			BigDecimal favPrice = mer.getPrice().multiply(ad).multiply(new BigDecimal(ml.getFavourable()));
			BigDecimal price;
			if (mer.getSprice().intValue() > 0) {
				// 特价
				price = favPrice.intValue() < mer.getSprice().intValue() ? favPrice : mer.getSprice();
			} else {
				// 折扣
				price = favPrice;
			}
			csdm.setCart(c.getId());
			csdm.setMerchandise(id);
			csdm.setNumber(1);
			csdm.setPrice(price);
			csdm.setMoney(price);
			int insert_row = cservice.insertCartselectedmer(csdm);
			cservice.updateCart(c.getId());
			if (insert_row > 0) {
				// 重新绑定购物车
				List<Cartselectedmer> list = cservice.findCartSelect(c.getId());
				Cart cart = cservice.selectById(m.getId());
				mav.addObject("merCart", list);
				mav.addObject("cart", cart);
				session.setAttribute("cart", cart);
				mav.setViewName("cartList");
				return mav;
			} else {
				try {
					res.sendRedirect(req.getContextPath());
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		} else {
			// 不存在商品就更新
			csdm.setNumber(csd.getNumber() + 1);
			csdm.setMoney(mer.getSprice().add(mer.getPrice()));
			csdm.setCart(c.getId());
			csdm.setMerchandise(id);
			int update_row = cservice.updateCartselectedmer(csdm);
			cservice.updateCart(c.getId());
			if (update_row > 0) {
				// 重新绑定购物车
				List<Cartselectedmer> list = cservice.findCartSelect(c.getId());
				Cart cart = cservice.selectById(m.getId());
				mav.addObject("merCart", list);
				mav.addObject("cart", cart);
				session.setAttribute("cart", cart);
				mav.setViewName("cartList");
				return mav;
			} else {
				try {
					res.sendRedirect(req.getContextPath());
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return null;
	}

	@RequestMapping("delCart")
	public ModelAndView delCart(Integer id, HttpSession session, HttpServletRequest req, HttpServletResponse res) {
		System.out.println(id);
		ModelAndView mav = new ModelAndView();
		Member m = (Member) session.getAttribute("member");
		Cart c = (Cart) session.getAttribute("cart");
		// 删除购物车商品
		cservice.delCart(id);
		// 更新购物车商品
		cservice.updateCart(c.getId());
		// 重新绑定购物车
		List<Cartselectedmer> list = cservice.findCartSelect(c.getId());
		Cart cart = cservice.selectById(m.getId());
		mav.addObject("merCart", list);
		mav.addObject("cart", cart);
		session.setAttribute("cart", cart);
		mav.setViewName("cartList");
		return mav;
	}

	@RequestMapping("clearCart")
	public ModelAndView clearCart(HttpSession session, HttpServletRequest req, HttpServletResponse res) {
		ModelAndView mav = new ModelAndView();
		Member m = (Member) session.getAttribute("member");
		Cart c = (Cart) session.getAttribute("cart");
		cservice.clearCart(c.getId());
		// 更新购物车商品
		cservice.updateCart(c.getId());
		// 重新绑定购物车
		List<Cartselectedmer> list = cservice.findCartSelect(c.getId());
		Cart cart = cservice.selectById(m.getId());
		mav.addObject("merCart", list);
		mav.addObject("cart", cart);
		session.setAttribute("cart", cart);
		mav.setViewName("cartList");
		return mav;
	}

	@RequestMapping("next")
	public ModelAndView next() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cartConfirm");
		return mav;
	}

	@RequestMapping("submit")
	public ModelAndView submit(HttpSession session, HttpServletRequest req, HttpServletResponse res) {
		ModelAndView mav = new ModelAndView();
		Member m = (Member) session.getAttribute("member");
		Cart c = (Cart) session.getAttribute("cart");
		int row = oservice.submit(m.getId(), c.getId());
		if (row > 0) {
			// 更新购物车状态
			int r = cservice.updateCartStatus(c.getId());
			if (r > 0) {
				DateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
				String onumber = df.format(new Date());
				Orders o = new Orders();
				o.setCart(m.getId());
				o.setMember(c.getId());
				o.setOrderdate(new Date());
				o.setOrderno(onumber);
				o.setOrderstatus(1);
				Cart cart = cservice.selectById(m.getId());
				session.setAttribute("cart", cart);
				mav.addObject("cart", cart);
				mav.addObject("order", o);
				mav.addObject("money", c.getMoney());
				mav.setViewName("cartSubmit");
			}
		} else {
			mav.setViewName("cartConfirm");
			return mav;
		}
		return mav;
	}

}
