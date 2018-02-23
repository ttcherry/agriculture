package com.agriculture.util;

import java.io.IOException;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import com.agriculture.po.MenuBean;


/*
 * MenuBean对象转换成json类型
 */

public class MenuToJson {
	
	public static String ObjecttoJson(MenuBean obj)
	{
		ObjectMapper mapper = new ObjectMapper();
		String result = null;
		try {
			if(obj!=null)
			{
				result = mapper.writeValueAsString(obj);
			}
		} catch (JsonGenerationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

}
