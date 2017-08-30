package com.investfar.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.investfar.model.Field;
import com.investfar.model.Info;
import com.investfar.model.Inquiry;

public interface BaseDao {

	public List<Field> getAllField();

	public int getcountByEmail(@Param("email") String email);

	public void createAccount(@Param("email") String email);

	public List<Info> getInfo(@Param("fieldId") String fieldId, @Param("limitStart") int limitStart, @Param("pageSize") int pageSize);
	
	
	public List<Info> getLargeInfo(@Param("querytext") String querytext);

	public int getCountForInfo(@Param("fieldId") String fieldId);

	public Info getInfoById(@Param("id") String id);

	public void createInquiry(Inquiry inquiry);

	public void updateInquiryNum(@Param("id") String id);
	
	public List<String> getEmailSuffixList();
}
