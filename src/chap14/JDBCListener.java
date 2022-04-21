package chap14;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.mariadb.jdbc.MariaDbPoolDataSource;

/**
 * Application Lifecycle Listener implementation class JDBCListener
 *
 */
@WebListener
public class JDBCListener implements ServletContextListener {

	private MariaDbPoolDataSource pool;
    /**
     * Default constructor. 
     */
    public JDBCListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	if(pool != null) {
    		pool.close();
    	}
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		// 톰캣이 어디 깔려있는지 모르기때문에 알아내서 지정해주어야함.
		ServletContext application = sce.getServletContext();
		String jdbcInfoFilePath = "/WEB-INF/props/jdbc.properties";
		InputStream propsFile = application.getResourceAsStream(jdbcInfoFilePath);
		// application에서 직접파일을 Inputstream으로 읽어냄
		Properties props = new Properties();

		try {
			props.load(propsFile); //읽어온 파일을 map형식으로 저장
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String url = props.getProperty("db.url");
		String schema = props.getProperty("db.schema");
		String id = props.getProperty("db.id");
		String pw = props.getProperty("db.password");

		String dburl = "jdbc:mariadb://" + url + "/" + schema
				+ "?user=" + id + "&password=" + pw;
		// 파일에서 읽어온 내용을 db에 접속 할 수 있는 형식에 맞게 세팅
		
		try {
			this.pool = new MariaDbPoolDataSource(dburl); // DB에 연결
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		application.setAttribute("dbpool", pool); // 연결된 DB의 DataSource를 Application영역에 저장
		
		/*try (Connection con = pool.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT 333");) {
		
			if (rs.next()) {
				if (rs.getInt(1) == 333) {
					System.out.println("데이터베이스 연결 성공!");
					
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		*/
	}
	
}
