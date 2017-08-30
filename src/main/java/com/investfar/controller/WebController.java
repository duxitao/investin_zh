package com.investfar.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.investfar.model.Field;
import com.investfar.model.Info;
import com.investfar.model.Inquiry;
import com.investfar.model.PageInfo;
import com.investfar.service.BaseService;
import com.investfar.util.EmailCode;
import com.investfar.util.PageUtil;

@Controller
public class WebController {
	private Logger logger = Logger.getLogger(WebController.class);
	@Autowired
	BaseService service = null;

	@RequestMapping("/")
	public String index(Model model) {
		logger.info("enter index……");
		try {
			// 查询领域信息
			// List<Field> fieldList = service.getAllField();
			// model.addAttribute("fieldList", fieldList);
			// 查询邮箱后缀
			List<String> emailSuffixList = service.getEmailSuffixList();
			model.addAttribute("emailSuffixList", emailSuffixList);
			return "index";
		} catch (Exception e) {
			logger.error("enter index error:" + e);
			return "exception";
		}
	}

	@RequestMapping(value = "login", method = { RequestMethod.POST })
	@ResponseBody
	public String login(Model model, String email, String code, HttpSession session) {
		logger.info("enter login……");
		try {
			email = email.trim().toLowerCase();
			// 检查验证码
			if (!EmailCode.verifyCode(email.trim(), code.trim()))
				return "001";
			service.login(email);
			session.setAttribute("email", email);
			return "000";
		} catch (Exception e) {
			logger.error("enter login error:" + e);
			return "exception";
		}
	}

	@RequestMapping("info")
	public String info(Model model, String fieldId, String querytext, HttpServletRequest request) {
		logger.info("enter info……");
		try {
			if (null == fieldId)
				fieldId = "";
			if (null == querytext)
				querytext = "";
			// 查询领域信息 改为根据关键字查询
			List<Field> fieldList = service.getAllField();
			model.addAttribute("fieldList", fieldList);
			// 查询总记录数
			int totalRecord = service.getCountForInfo(fieldId);
			PageInfo pageInfo = PageUtil.addPage(model, request, totalRecord);
			// 小项目
			List<Info> list = service.getInfo(fieldId, pageInfo);
			// 大项目
			List<Info> LargeList = service.getLargeInfo(querytext);
			model.addAttribute("list", list);
			model.addAttribute("LargeList", LargeList);
			model.addAttribute("fieldId", fieldId);
			model.addAttribute("querytext", querytext);
			return "info";
		} catch (Exception e) {
			logger.error("enter info error:" + e);
			return "exception";
		}
	}

	@RequestMapping("infoDetail/{id}")
	public String infoDetail(Model model, @PathVariable String id) {
		logger.info("enter infoDetail……");
		try {
			// 查询领域信息
			List<Field> fieldList = service.getAllField();
			Info info = service.getInfoById(id);
			model.addAttribute("fieldList", fieldList);
			model.addAttribute("info", info);
			if ("1".equals(info.getIs_large()))
				return "largeInfoDetail";
			else
				return "infoDetail";

		} catch (Exception e) {
			logger.error("enter infoDetail error:" + e);
			return "exception";
		}
	}

	@RequestMapping(value = "createInquiry", method = { RequestMethod.POST })
	@ResponseBody
	public String createInquiry(Model model, Inquiry inquiry, HttpSession session) {
		logger.info("enter createInquiry……");
		try {
			String email = (String) session.getAttribute("email");
			if (null == email)
				return "001";// 登录超时
			inquiry.setInquiry_email(email);
			service.createInquiry(inquiry);
			// 取消被询问信息的置顶权限
			return "000";

		} catch (Exception e) {
			logger.error("createInquiry error:" + e);
			return "-1";
		}
	}

	@RequestMapping("introduction")
	public String profile(Model model) {
		logger.info("enter introduction……");
		return "introduction";
	}
	@RequestMapping("contact")
	public String contact(Model model) {
		logger.info("enter contact……");
		return "contact";
	}
}
