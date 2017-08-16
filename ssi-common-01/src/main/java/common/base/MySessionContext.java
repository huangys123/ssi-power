package common.base;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.JsonParser;

public class MySessionContext {
	
private static Map<String, HttpSession> sessionMap = new HashMap<String, HttpSession>();
	
	public static void addSession(String userId, HttpSession session) {
		sessionMap.put(userId, session);
	}
	
	public static void removeSession(String userId) {
		HttpSession httpSession = sessionMap.get(userId);
		if (null != httpSession) {
			//使原来存在的session失效
			//判断session是否失效，没有失效的让他失效
			String json = new Gson().toJson(httpSession);
			boolean valid = new JsonParser().parse(json).getAsJsonObject()
					.get("session").getAsJsonObject()
					.get("isValid").getAsBoolean();
			if (valid) {
				httpSession.invalidate();
			}
		}
	}
	
	public static HttpSession getSession(String userId) {
		return sessionMap.get(userId);
	}

}
