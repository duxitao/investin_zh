package com.investfar.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.investfar.dao.BaseDao;
import com.investfar.model.Field;
import com.investfar.model.Info;
import com.investfar.model.Inquiry;
import com.investfar.model.PageInfo;
import com.investfar.service.BaseService;

@Service
public class BaseServiceImpl implements BaseService {
	@Autowired
	BaseDao dao = null;

	public List<Field> getAllField() {
		return dao.getAllField();
	}

	public boolean login(String email) {
		if (dao.getcountByEmail(email) == 0)
			dao.createAccount(email);
		return true;
	}

	public List<Info> getInfo(String fieldId, PageInfo pageInfo) {
		int limitStart = (pageInfo.getPageNum() - 1) * pageInfo.getPageSize();
		if ("".equals(fieldId))
			fieldId = null;
		return dao.getInfo(fieldId, limitStart, pageInfo.getPageSize());
	}

	public List<Info> getLargeInfo(String querytext) {
		if ("".equals(querytext))
			querytext = null;
		return dao.getLargeInfo(querytext);
	}

	public int getCountForInfo(String fieldId) {
		if ("".equals(fieldId))
			fieldId = null;
		return dao.getCountForInfo(fieldId);
	}

	public Info getInfoById(String id) {
		return dao.getInfoById(id);
	}

	@Transactional
	public void createInquiry(Inquiry inquiry) {
		dao.createInquiry(inquiry);
		dao.updateInquiryNum(inquiry.getInfo_id() + "");

	}

	public List<String> getEmailSuffixList() {
		
		return dao.getEmailSuffixList();
	}

}
