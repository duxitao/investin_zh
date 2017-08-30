package com.investfar.service;

import java.util.List;

import com.investfar.model.Field;
import com.investfar.model.Info;
import com.investfar.model.Inquiry;
import com.investfar.model.PageInfo;

public interface BaseService {
	/**
	 * 查询领域信息
	 * 
	 * @return
	 */
	public List<Field> getAllField();

	public boolean login(String email);

	public List<Info> getInfo(String fieldId, PageInfo pageInfo);

	public List<Info> getLargeInfo(String querytext);

	public int getCountForInfo(String fieldId);

	public Info getInfoById(String id);

	public void createInquiry(Inquiry inquiry);
	
	public List<String> getEmailSuffixList();
}
