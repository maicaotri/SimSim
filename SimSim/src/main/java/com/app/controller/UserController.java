package com.app.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.app.model.NumberView;
import com.app.model.UserView;
import com.app.model.entitymodel.MainUser;
import com.app.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;

	@RequestMapping("/admin/")
	public ModelAndView getListUser(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		request.setAttribute("mess", "Hello");
		return new ModelAndView("wellcome");
	}

	@RequestMapping("/admin/danhsach")
	public ModelAndView getListUser(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestHeader(name = "content-type", required = false) String contentype) {
		List<MainUser> list = userService.getAll();
		request.setAttribute("listU", list);
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		HttpSession sessionHttp = request.getSession();
		sessionHttp.setAttribute("username", authentication.getName());

		return new ModelAndView("listuser");
	}

	@RequestMapping("/admin/listUser")
	public @ResponseBody List<MainUser> listUser(HttpServletRequest request, HttpServletResponse response,
			HttpSession session,
			@RequestHeader(name = "content-type", required = false, defaultValue = "UTF-8") String contentype) {
		return userService.getAll();
	}

	@RequestMapping("/admin/user/{username}")
	public @ResponseBody MainUser listUser(@PathVariable(name = "username") String username) {
		return userService.getByUsername(username);
	}

	@RequestMapping("/admin/listCheckbox")
	public String listCheckbox(@PathVariable(name = "listCheckbox") List<Integer> listCheckbox) {
		for (Integer i : listCheckbox) {
			System.out.println(i);
		}
		return "wellcome";
	}

	@RequestMapping(value="/checkUsername", method=RequestMethod.POST)
	public @ResponseBody NumberView usernameIsExist(@RequestParam(name = "username") String username) {
		return new NumberView(userService.usernameIsExist(username));
	}

	@RequestMapping(value = "/checkEmail", method = RequestMethod.POST)
	public @ResponseBody NumberView emailIsExist(@RequestParam(name = "email") String email) {
		return new NumberView(userService.emailIsExist(email));
	}

	@RequestMapping(value = "/admin/user/table", method = RequestMethod.GET)
	public String getUserTablePage() {
		return "admin/table_user";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String getRegisterPage() {
		return "register";
	}

	@RequestMapping(value = "/admin/user/finduser", method = RequestMethod.POST)
	public @ResponseBody UserView findUser(@RequestParam(name = "keyword", required = false) String keyword,
			@RequestParam(name = "page", required = false, defaultValue = "1") int page,
			@RequestParam(name = "size", required = false, defaultValue = "10") int size) {
		List<MainUser> listUser = null;
		if (keyword != null && keyword.length() > 0) {
			listUser = userService.findUsers(keyword, page, size);
		} else {
			listUser = userService.getAll(page, size);
		}
		List<Integer> listPage = PageProcessing.getListPage(page, size, userService.countUsers(keyword));
		return new UserView(listUser, listPage);
	}
	
	@RequestMapping(value = "/createUser", method = RequestMethod.POST)
	public String createUser(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam(name = "fName", required = true) String fName,
			@RequestParam(name = "lName", required = true) String lName,
			@RequestParam(name = "username", required = true) String username,
			@RequestParam(name = "sex", required = true) String sex,
			@RequestParam(name = "email", required = true) String email,
			@RequestParam(name = "password", required = true) String password,
			@RequestParam(name = "rePassword", required = true) String rePassword,
			@RequestParam(name = "phone", required = true) String phone,
			@RequestParam(name = "address", required = true) String address,
			@RequestHeader(name = "content-type", required = false, defaultValue = "UTF-8") String contentype
			) {
	int usernameIsExist = userService.usernameIsExist(username);
	int emailIsExist = userService.emailIsExist(email);
	if(usernameIsExist==0 && emailIsExist==0 && password.equals(rePassword)) {
		MainUser newUser = new MainUser();
		newUser.setAdress(address);
		newUser.setEmail(email);
		newUser.setEnabled((byte) 1);
		newUser.setfName(fName);
		newUser.setlName(lName);
		newUser.setPassword(password);
		newUser.setPhone(phone);
		newUser.setRole("ROLE_USER");
		newUser.setSex(sex);
		newUser.setUsername(username);
		userService.add(newUser);
		request.setAttribute("mess", "Tạo tài khoản thành công");
	}else {
		request.setAttribute("mess", "Tạo tài khoản thất bại");
	}
	return "my_account";
	}

	
}
