package common.intercepor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		// TODO Auto-generated method stub
		//获取session对象
		HttpSession session = request.getSession();
		System.out.println(session.getId());
		//获取访问的URL
		String requestURI = request.getRequestURI();
		System.out.println(requestURI);
		//获取访问参数
		String queryString = request.getQueryString();
		System.out.println(queryString);
		//获取客户端主机
		String remoteHost = request.getRemoteHost();
		System.out.println(remoteHost);
		
		System.out.println(" 已拦截到 ============");
		
		//判断用户是否登陆过
		if(null != session.getAttribute("userInfo")){
			//一登陆
			return true;
		}else {
			//未登录 重定向到登录页面
			//判断是否是ajax请求
			String type = request.getHeader("X-Requested-With"); // XMLHttpRequest
				//重定向
			String contextPath = request.getContextPath();
			String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ contextPath + "/";
				// 转发
			if (StringUtils.equals("XMLHttpRequest", type)) {
				// ajax请求
				response.setHeader("SESSIONSTATUS", "TIMEOUT");
				response.setHeader("CONTEXTPATH", basePath+"login.jsp");
				response.setStatus(HttpServletResponse.SC_FORBIDDEN);
			} else{
				//常规
			response.sendRedirect(request.getContextPath() + "/login.jsp");
			}
		}
		// true 继续执行 ; false 返回前台
		return false;
	}

	
}
