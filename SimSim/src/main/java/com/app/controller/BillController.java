package com.app.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.app.model.entitymodel.Bill;
import com.app.service.BillService;

@Controller
public class BillController {
	@Autowired
	BillService billService;

	@RequestMapping("/bill/list")
	public @ResponseBody List<Bill> listUser(HttpServletRequest request, HttpServletResponse response,
			HttpSession session,
			@RequestHeader(name = "content-type", required = false, defaultValue = "UTF-8") String contentype) {

		List<Bill> list = billService.getAll();
		return list;
	}
}
