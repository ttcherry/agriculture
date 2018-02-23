package com.agriculture.util;

import java.util.List;

import com.agriculture.po.Factor;

public class PageUtil {

	
	private int currentPage = 1;//当前页
	
	private int pageSize = 3;//每页记录数
	
	private int beginIndex = 0;//开始位置
	
	private int endIndex;//结束位置
	
	private int pageCount;//共多少页
	
	private int pageCounts;//共多少记录
	
	private List<Factor> factorlist;
	
	public List<Factor> getFactorlist() {
		return factorlist;
	}

	public void setFactorlist(List<Factor> factorlist) {
		this.factorlist = factorlist;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getBeginIndex() {
		return beginIndex;
	}

	public void setBeginIndex(int beginIndex) {
		this.beginIndex = beginIndex;
	}

	public int getEndIndex() {
		return endIndex;
	}

	public void setEndIndex(int endIndex) {
		this.endIndex = endIndex;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getPageCounts() {
		return pageCounts;
	}

	public void setPageCounts(int pageCounts) {
		this.pageCounts = pageCounts;
	}
	
}
