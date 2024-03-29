package com.agriculture.exception;

/**
 * 
 * <p>Title: CustomException</p>
 * <p>Description:系统 自定义异常类，针对预期的异常，需要在程序中抛出此类的异常 </p>
 * <p>Company: www.itcast.com</p> 
 * @author	传智.燕青
 * @date	2015-4-14上午11:52:02
 * @version 1.0
 */
public class CustomException extends Exception {
	
	//异常信息
	public String message;
	
	public CustomException(String message){
		super(message);
		this.message = message;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	

}
