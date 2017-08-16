package common.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ApplicationListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println(" 作业写完了 ");
	}

	/* (non-Javadoc)    
	 * @see javax.servlet.ServletContextListener#contextDestroyed(javax.servlet.ServletContextEvent)    
	 */	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		
	}
}
