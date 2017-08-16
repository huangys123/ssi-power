package common.listener;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestContextListener;

public class RequestListener implements ServletRequestListener{

	@Override
	public void requestInitialized(ServletRequestEvent requestEvent) {
		HttpServletRequest servletRequest = (HttpServletRequest) requestEvent.getServletRequest();
		System.out.println("用户创建了一个请求：" + servletRequest.getRequestURI());
	}

	@Override
	public void requestDestroyed(ServletRequestEvent sre) {
		// TODO Auto-generated method stub
		
	}
	
}
