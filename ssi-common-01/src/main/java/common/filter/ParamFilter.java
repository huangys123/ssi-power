package common.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class ParamFilter implements Filter{
	// 初始化
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}
	// 处理
	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("农场消消乐");
		
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		System.out.println(httpRequest.getSession().getId());
		//调用 这个方法
		chain.doFilter(request, response);
	}
	// 销毁
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
	
	
}
