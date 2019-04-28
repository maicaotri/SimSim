package com.app.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.app.model.entitymodel.CartBillDetail;
import com.app.model.entitymodel.MainUser;
import com.app.model.entitymodel.Sim;
import com.app.service.CartBillDetailService;
import com.app.service.SimService;

@Controller
public class CartBillDetailController {
	@Autowired
	CartBillDetailService cartBillDetailService;
	@Autowired
	SimService simService;

	@RequestMapping(value = "/cartBillDetail/list", method = RequestMethod.GET)
	public @ResponseBody List<CartBillDetail> listUser(HttpServletRequest request, HttpServletResponse response,
			HttpSession session,
			@RequestHeader(name = "content-type", required = false, defaultValue = "UTF-8") String contentype) {

		return cartBillDetailService.getAll();
	}

	@RequestMapping(value = "/user/addSimToCart", method = RequestMethod.GET)
	public ModelAndView addSimToCart(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam(name = "simId", required = true) Integer simId,
			@RequestParam(name = "page", required = false, defaultValue = "1") int page,
			@RequestParam(name = "size", required = false, defaultValue = "10") int size,
			@RequestHeader(name = "content-type", required = false, defaultValue = "UTF-8") String contentype) {
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String username = authentication.getName();
		MainUser user = new MainUser();
		user.setUsername(username);
		
		if(!cartBillDetailService.isExist(username, simId)) {
		Sim sim = simService.getById(simId);
		CartBillDetail newCartBillDetail = new CartBillDetail();
		newCartBillDetail.setMainuser(user);
		newCartBillDetail.setSim(sim);
		newCartBillDetail.setPrice(sim.getPrice());
		newCartBillDetail.setStatus("READY");
		cartBillDetailService.add(newCartBillDetail);
		}

		return getCart(request, response, session, page, size, contentype);
	}

	@RequestMapping(value = "/user/cart")
	public ModelAndView getCart(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam(name = "page", required = false, defaultValue = "1") int page,
			@RequestParam(name = "size", required = false, defaultValue = "10") int size,
			@RequestHeader(name = "content-type", required = false, defaultValue = "UTF-8") String contentype) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String username = authentication.getName();
		HttpSession sessionHttp = request.getSession();
		List<CartBillDetail> list = cartBillDetailService.find(username, page, size);
		double totalPrice = 0;
		for (CartBillDetail i : list) {
			if (i.getSim().getDealPrice() != null)
				totalPrice += i.getSim().getDealPrice();
			totalPrice += i.getSim().getPrice();
		}
		sessionHttp.setAttribute("list", list);
		sessionHttp.setAttribute("totalPrice", totalPrice);
		return new ModelAndView("giohang");
	}

	@RequestMapping(value = "/user/pay")
	public ModelAndView pay(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam(name = "listId", required = true) List<Integer> listId,
			@RequestParam(name = "page", required = false, defaultValue = "1") int page,
			@RequestParam(name = "size", required = false, defaultValue = "10") int size,
			@RequestHeader(name = "content-type", required = false, defaultValue = "UTF-8") String contentype) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String username = authentication.getName();
		HttpSession sessionHttp = request.getSession();
		cartBillDetailService.payByUsernameAndListSimId(username, listId);
		List<CartBillDetail> list = cartBillDetailService.findBillByUsername(username, page, size);
		sessionHttp.setAttribute("list", list);
		return new ModelAndView("redirect:/user/bill");
	}

	@RequestMapping(value = "/user/bill")
	public ModelAndView getBill(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam(name = "page", required = false, defaultValue = "1") int page,
			@RequestParam(name = "size", required = false, defaultValue = "10") int size,
			@RequestHeader(name = "content-type", required = false, defaultValue = "UTF-8") String contentype) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String username = authentication.getName();
		HttpSession sessionHttp = request.getSession();
		List<CartBillDetail> list = cartBillDetailService.findBillByUsername(username, page, size);
		sessionHttp.setAttribute("list", list);
		return new ModelAndView("hoadon");
	}

	@RequestMapping("/cartBillDetail/user")
	public @ResponseBody List<CartBillDetail> listCartDetails(HttpServletRequest request, HttpServletResponse response,
			HttpSession session, @RequestParam(name = "username", required = true) String username,
			@RequestParam(name = "page", required = false, defaultValue = "1") int page,
			@RequestParam(name = "size", required = false, defaultValue = "10") int size,
			@RequestHeader(name = "content-type", required = false, defaultValue = "UTF-8") String contentype) {

		return cartBillDetailService.find(username, page, size);
	}
}
