package com.mindtree.usermanagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mindtree.usermanagement.model.User;
import com.mindtree.usermanagement.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String load() {
		return "index";
	}

	@RequestMapping(value = "/addUser", method = RequestMethod.GET)
	public String addUserUI() {
		return "adduser";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addUser(User user, ModelMap model) {
		/*
		 * System.out.println(user.getUserName()); System.out.println(user.getUserId());
		 * System.out.println(user.getEmail()); System.out.println(user.getPhone());
		 * model.addAttribute(user.getUserName()); model.addAttribute(user.getPhone());
		 * model.addAttribute(user.getEmail());
		 */

		if (user.getUserName() == "" || user.getPhone().length() != 10) {
			return "adduser";

		} else {
			User savedUser = userService.addUser(user);

			return "index";

		}

	}

	@RequestMapping(value = "/deleteUser", method = RequestMethod.GET)
	public String deleteUserUI() {
		return "deleteuser";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String deleteUser(@RequestParam String name) {

//		System.out.println(name);
		if (name == "") {
			return "deleteuser";
		} else {
			userService.deleteUser(name);

			return "index";
		}

	}

	@RequestMapping(value = "/displayUsers", method = RequestMethod.GET)
	public String displyUsersUI(Model model) {
		// List<User> usersList = userService.getAllUsers();
		// System.out.println(usersList);
		model.addAttribute("userList", userService.getAllUsers());
		return "displayusers";
	}

//	@RequestMapping("/displyUsers")
//	public List<User> getAllUsers(){
//		List<User> usersList = userService.getAllUsers();
//		return usersList;
//	}

}
