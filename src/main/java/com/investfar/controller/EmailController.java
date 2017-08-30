package com.investfar.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.investfar.service.impl.EmailServer;
@Controller
public class EmailController {

	@Autowired
	EmailServer emailServer;

	@RequestMapping(value = "sendEmailCode", method = { RequestMethod.POST })
	@ResponseBody
	public String sendEmailCode(String email, String type, HttpSession session) {
		email=email.trim().toLowerCase();
		if (emailServer.sendEmail(email)) {
			session.setAttribute("email", email);
			return "000";
		} else
			return "500";
	}
}
