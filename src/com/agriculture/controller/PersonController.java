package com.agriculture.controller;


import java.io.File;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.agriculture.po.Area;
import com.agriculture.po.CropCustom;
import com.agriculture.po.SysUser;
import com.agriculture.service.SysUserService;


@Controller
public class PersonController {

	@Autowired SysUserService userService;
	//提交修改的用户信息
	@RequestMapping("personSubmit")
	public String submitUserInfo(HttpSession session, SysUser sysUser,@RequestParam MultipartFile picture)throws Exception{
	
		System.out.println("修改个人信息");
		System.out.println(sysUser.getName());
		SysUser currentUser = (SysUser) session.getAttribute("user");
		sysUser.setCreate_by(currentUser.getName());
		Date date = new Date();
		sysUser.setUpdate_date(date);
		sysUser.setUpdate_by(currentUser.getName());
				//原始名称
				String originalFilename = picture.getOriginalFilename();
				//上传图片
				if(picture!=null && originalFilename!=null && originalFilename.length()>0){
					
					//存储图片的物理路径
					//String pic_path = "E:\\eclipse\\wrokspace\\agriculture1\\WebContent\\images\\";
					String pic_path = "E:\\temp\\"; 
					//File directory = new File("");
					//新的图片名称
					String newFileName = UUID.randomUUID() + originalFilename ;
					//新图片
					File newFile = new File(pic_path+newFileName);
					//将内存中的数据写入磁盘
					picture.transferTo(newFile);
					
					//将新图片名称写到数据库中
					sysUser.setPic(newFileName);
					System.out.println(sysUser.getPic());
					//提交修改信息（包括修改图片信息）
					System.out.println("修改图片！");
					userService.submitUserInfo(sysUser);
					
				}else {
					userService.submitUserInfoNot(sysUser);
					System.out.println("修改昵称"+sysUser.getName());
				}
		//重新保存用户到session
		SysUser ser=userService.findInfoByAccount(sysUser);
		session.setAttribute("user", ser);
		return "system/Person/person";
	}
	
	@RequestMapping("areaedit")
	public String areaedit() throws Exception{
		return "system/areaedit";
	}
	
	//插入用户的信息
		@RequestMapping("personInsert")
		public String submitUserInfoInsert(HttpSession session, SysUser sysUser,@RequestParam MultipartFile picture)throws Exception{
		
			SysUser user2 = userService.getInfoByAccount(sysUser.getAccount());
			if(user2==null){
			System.out.println("新增个人信息");
			System.out.println(sysUser.getAccount());
			SysUser currentUser = (SysUser) session.getAttribute("user");
			sysUser.setCreate_by(currentUser.getName());
			Date date = new Date();
			sysUser.setCreate_by(currentUser.getAccount());
			sysUser.setCreate_date(currentUser.getCreate_date());
			sysUser.setUpdate_date(date);
			sysUser.setUpdate_by(currentUser.getName());
					//原始名称
					String originalFilename = picture.getOriginalFilename();
					//上传图片
					if(picture!=null && originalFilename!=null && originalFilename.length()>0){
						
						//存储图片的物理路径
						//String pic_path = "E:\\eclipse\\wrokspace\\agriculture1\\WebContent\\images\\";
						String pic_path = "E:\\temp\\"; 
						//File directory = new File("");
						//新的图片名称
						String newFileName = UUID.randomUUID() + originalFilename ;
						//新图片
						File newFile = new File(pic_path+newFileName);
						//将内存中的数据写入磁盘
						picture.transferTo(newFile);
						
						//将新图片名称写到数据库中
						sysUser.setPic(newFileName);
						System.out.println(sysUser.getPic());
						//提交修改信息（包括修改图片信息）
						System.out.println("修改图片！");
						userService.insertPerson(sysUser);;
						
					}
			}
			else{
				return "system/Person/personerror";
			}
		
			return "system/Person/personInsert";
		}
		
		//搜索模糊查找
		@RequestMapping("personsearch/{keyword}")
		public ModelAndView search(@PathVariable String keyword) throws Exception{
			List<SysUser> userList=userService.searchPerson(keyword);
			ModelAndView mv = new ModelAndView();
			mv.addObject("personlist", userList);
			mv.setViewName("system/Person/personlist");
			return mv; 
		}
		
		@RequestMapping("deleteUser")
		@ResponseBody
		public String deleteUser(Integer id)
		{
			
			String result = "error";
			try{
				userService.deleteUser(id);
				result="success";
			} catch (Exception e) {

				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("管理员删除失败！");
				result = "error";
			}
			
			System.out.println(result+"删除管理员！");
			return result;
		}
	
}
