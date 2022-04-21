package chap20;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServletContextListener01
 *
 */
@WebListener
//톰캣에게 알릴때 쓰임(annotation)
public class ServletContextListener01 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public ServletContextListener01() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	//application 종료될 때 쓰이는 메소드
    	System.out.println("내 jsp 앱 종료되었음!!!");
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	//application 시작될 때 쓰이는 메소드
    	//application에 data를 주고 받을때 안전하게 사용할 수 있는 메소드
    	System.out.println("내 jsp앱 시작되었음.!!!");
    }
	
}
