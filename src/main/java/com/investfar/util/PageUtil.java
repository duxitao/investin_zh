package com.investfar.util;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.investfar.model.PageInfo;

public class PageUtil {

	public static PageInfo addPage(Model model, HttpServletRequest request, int totalRecord) {
		int pageNum = 1;
		int pageSize = 5;
		if (request.getParameter("pageNum") != null && !"".equals(request.getParameter("pageNum")))
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
		if (request.getParameter("pageSize") != null && !"".equals(request.getParameter("pageSize")))
			pageSize = Integer.parseInt(request.getParameter("pageSize"));
		int totalPageNum = totalRecord / pageSize;
		if (totalRecord % pageSize > 0)
			totalPageNum++;
		if (pageNum > totalPageNum)
			pageNum = totalPageNum;
		if (pageNum < 1)
			pageNum = 1;
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("totalPageNum", totalPageNum);
		model.addAttribute("pageSize", pageSize);


		List<String> pageList = new ArrayList<String>();
		int pageNum_start = 0;
		int pageNum_end = 0;
		if (totalPageNum <= 5) {
			pageNum_start = 1;
			pageNum_end = totalPageNum;
		} else {
			if (pageNum > 2) {
				pageNum_start = pageNum - 2;
				pageNum_end = pageNum + 2;
			} else {
				pageNum_start = 1;
				pageNum_end = 5;
			}
			if (pageNum_end >= totalPageNum) {
				pageNum_end = totalPageNum;
				pageNum_start = pageNum_end - 4;
			}

		}
		while (pageNum_start <= pageNum_end) {
			pageList.add(pageNum_start + "");
			pageNum_start++;
		}
		/*8
		if (pageNum > 3)
			pageList.add(0,"&#60;");
		if (pageNum_end < totalPageNum)
			pageList.add("&#62;");
		*/
		model.addAttribute("pageList", pageList);
		
		return new PageInfo(pageNum, pageSize);
	}
}
