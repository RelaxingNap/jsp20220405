package chap20;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServletContextListener04
 *
 */
@WebListener
public class ServletContextListener04 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public ServletContextListener04() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         System.out.println("4번 servletcontextlistener실행됨");
         String val = sce.getServletContext().getInitParameter("initParamName1");
         String adminEmail = sce.getServletContext().getInitParameter("adminEmail");
         
         sce.getServletContext().setAttribute("adminEmail", adminEmail);
         
         System.out.println(val);
         // 관리자 주소나 비밀번호, email등을 web.xml에 등록해놓고 사용할 수 있다.
         
         
    }
	
}
