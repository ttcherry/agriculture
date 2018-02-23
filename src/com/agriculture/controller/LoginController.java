package com.agriculture.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.agriculture.po.SysUser;
import com.agriculture.service.SysUserService;



@Controller

public class LoginController  extends BaseController {
	
	@Autowired
	private SysUserService sysUserService;

		//根据账号和密码查找用户信息
		@RequestMapping("login")
		public ModelAndView login(HttpSession session,HttpServletResponse response, 
				SysUser sysUser,ModelMap model) throws Exception{
		
			System.out.println("进入登录");
			//创建ModelAndView对象
			ModelAndView modelAndView=new ModelAndView();
			
			
			//获取查找的对象信息
			SysUser sysUser1=sysUserService.findInfoByAccount(sysUser);
			//System.out.println(sysUser.getQq()+"11111111111111111");
			//密码或者账号不正确或者不存在该用户名，则登录失败
			if(sysUser1==null)
			{
				
				modelAndView.setViewName("/login");
				
			}else{
				//登录成功,保存session
				Date date = new Date();
				sysUser1.setUpdate_date(date);
				sysUserService.submitUserInfo(sysUser1);
				sysUser1=sysUserService.findInfoByAccount(sysUser);
				session.setAttribute("user", sysUser1);
				model.put("userInfor", sysUser1);
				modelAndView.setViewName("index2");
			}
			
			
			//返回
			return modelAndView;
		}
	
	/**
	 * 请求登录，验证用户
	 * 将处理功能方法将生产json格式的数据 此时根据请求头中的Accept进行匹配
	 * 
	 */
//	
//	@RequestMapping("login_login")
//	@ResponseBody
//	public ModelAndView login(HttpSession session,SysUser user)throws Exception{
//		System.out.println("登录验证");
//		System.out.println(user.getAccount());
//		ModelAndView mv=new ModelAndView();
//		Map<String,String> map = new HashMap<String,String>();
//		PageData pd = new PageData();
//		pd = this.getPageData();
//		String errInfo = "";
//		//String passwd = new SimpleHash("SHA-1", USERNAME, PASSWORD).toString();	//密码加密
//		SysUser user_1 = new SysUser();
//		user_1= sysUserService.findInfoByAccount(user);
//		pd.put("user", user_1);
//		if(user_1 != null){
//			pd.put("LAST_LOGIN",DateUtil.getTime().toString());
//			//userService.updateLastLogin(pd);
//			session.setAttribute("user", user_1);
//			mv.setViewName("index2");
//		}else{
//			errInfo = "usererror"; 				//用户名或密码有误
//			mv.setViewName("login");
//		}
//		map.put("result", errInfo);
//		return mv;
//	}
	
	@RequestMapping("table")
	public String getTable() throws Exception{
		return "table";
	}
	
	@RequestMapping("to_login")
	public String getlogin() throws Exception{
		return "login";
		
	}
	
	@RequestMapping("checkUser")
	@ResponseBody
	public Object checkUser(SysUser user,HttpSession session) throws Exception{
		System.out.println("进入checkUser"+user.getAccount());
		SysUser sysUser1=sysUserService.findInfoByAccount(user);
		//密码或者账号不正确或者不存在该用户名，则登录失败
		if(sysUser1!=null)
		{
			//登录成功,保存session
			session.setAttribute("user", sysUser1);
		}
		return sysUser1;
	}
	
	// 退出
		@RequestMapping("user_logout")
		public void user_logout(HttpSession session) throws Exception {
			System.out.println("清除session");
			// 清除session
			session.invalidate();
		}
	

	// 退出
	@RequestMapping("logout")
	public String logout(HttpSession session) throws Exception {

		// 清除session
		session.invalidate();

		return "redirect:login.action";
	}

}
