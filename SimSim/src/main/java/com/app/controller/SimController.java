package com.app.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.app.model.entitymodel.Sim;
import com.app.service.SimService;

@Controller
public class SimController {
	@Autowired
	SimService simService;

	@RequestMapping("/sim/list")
	public @ResponseBody List<Sim> getAll(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestHeader(name = "content-type", required = false, defaultValue = "UTF-8") String contentype) {

		List<Sim> list = simService.getAll();
		return list;
	}

	@RequestMapping(value = "/sim/findSim", method = RequestMethod.GET)
	public ModelAndView findSim(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam(name = "networdId", required = false) Integer networdId,
			@RequestParam(name = "priceFrom", required = false, defaultValue = "0") double priceFrom,
			@RequestParam(name = "priceTo", required = false, defaultValue = "10000000") double priceTo,
			@RequestParam(name = "score", required = false) Integer score,
			@RequestParam(name = "totalNumbers", required = false) Integer totalNumbers,
			@RequestParam(name = "simFind", required = false) String number,
			@RequestParam(name = "page", required = false, defaultValue = "1") int page,
			@RequestParam(name = "size", required = false, defaultValue = "10") int size,
			@RequestParam(name = "notContainNumbers", required = false) List<Integer> notContainNumbers,
			@RequestHeader(name = "content-type", required = false, defaultValue = "UTF-8") String contentype) {

		List<Sim> list = simService.findByAllInputsAndReturn(networdId, priceFrom, priceTo, score, totalNumbers, number,
				notContainNumbers, page, size);
		request.setAttribute("list", list);
		return new ModelAndView("trangchu");
//		return new ModelAndView("redirect:/trangchu");
	}

	@RequestMapping(value = "/sim/findSim", method = RequestMethod.POST)
	public ModelAndView findSimPost(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam(name = "networdId", required = false) Integer networdId,
			@RequestParam(name = "priceFrom", required = false, defaultValue = "0") double priceFrom,
			@RequestParam(name = "priceTo", required = false, defaultValue = "10000000") double priceTo,
			@RequestParam(name = "score", required = false) Integer score,
			@RequestParam(name = "totalNumbers", required = false) Integer totalNumbers,
			@RequestParam(name = "simFind", required = false) String number,
			@RequestParam(name = "page", required = false, defaultValue = "1") int page,
			@RequestParam(name = "size", required = false, defaultValue = "10") int size,
			@RequestParam(name = "notContainNumbers", required = false) List<Integer> notContainNumbers,
			@RequestHeader(name = "content-type", required = false, defaultValue = "UTF-8") String contentype) {

		List<Sim> list = simService.findByAllInputsAndReturn(networdId, priceFrom, priceTo, score, totalNumbers, number,
				notContainNumbers, page, size);
		request.setAttribute("list", list);
		return new ModelAndView("trangchu");
	}

	@RequestMapping(value = "/sim/findSimDetail", method = RequestMethod.POST)
	public @ResponseBody List<Sim> findSimDetail(HttpServletRequest request, HttpServletResponse response,
			HttpSession session, @RequestParam(name = "networdId", required = false) Integer networdId,
			@RequestParam(name = "priceFrom", required = false, defaultValue = "0") double priceFrom,
			@RequestParam(name = "priceTo", required = false, defaultValue = "10000000") double priceTo,
			@RequestParam(name = "score", required = false) Integer score,
			@RequestParam(name = "totalNumbers", required = false) Integer totalNumbers,
			@RequestParam(name = "simFind", required = false) String number,
			@RequestParam(name = "page", required = false, defaultValue = "1") int page,
			@RequestParam(name = "size", required = false, defaultValue = "10") int size,
			@RequestParam(name = "notContainNumbers", required = false) List<Integer> notContainNumbers,
			@RequestHeader(name = "content-type", required = false, defaultValue = "UTF-8") String contentype) {

		return simService.findByAllInputsAndReturn(networdId, priceFrom, priceTo, score, totalNumbers, number,
				notContainNumbers, page, size);
	}

	@RequestMapping(value = "/sim/getTotalRecords", method = RequestMethod.POST)
	public @ResponseBody int getTotalRecords(HttpServletRequest request, HttpServletResponse response,
			HttpSession session, @RequestParam(name = "networdId", required = false) Integer networdId,
			@RequestParam(name = "priceFrom", required = false, defaultValue = "0") double priceFrom,
			@RequestParam(name = "priceTo", required = false, defaultValue = "10000000") double priceTo,
			@RequestParam(name = "score", required = false) Integer score,
			@RequestParam(name = "totalNumbers", required = false) Integer totalNumbers,
			@RequestParam(name = "simFind", required = false) String number,
			@RequestParam(name = "page", required = false, defaultValue = "1") int page,
			@RequestParam(name = "size", required = false, defaultValue = "10") int size,
			@RequestParam(name = "notContainNumbers", required = false) List<Integer> notContainNumbers,
			@RequestHeader(name = "content-type", required = false, defaultValue = "UTF-8") String contentype) {

		return simService.countAll(networdId, priceFrom, priceTo, score, totalNumbers, number, notContainNumbers);
	}

	@RequestMapping(value = "/sim/loadSim")
	public ModelAndView loadSimPost(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		return new ModelAndView("loadsim");
	}

	@RequestMapping(value = "/admin")
	public ModelAndView admin(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		return new ModelAndView("admin/admin");
	}
	@RequestMapping(value = "/admin/table")
	public ModelAndView getAdminTable(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		return new ModelAndView("admin/table");
	}
}
