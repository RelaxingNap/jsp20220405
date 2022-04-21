package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class S14Servlet01
 */
@WebServlet("/S14Servlet01")
public class S14Servlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet01() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServletContext application = getServletContext();
		
		// Listener에서 작성
		// 위치(ip주소), 스키마, id, pw
		
		// database에서 records 가져오기
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		List<String> cities = new ArrayList<>();
		List<String> countries = new ArrayList<>();
		String sql = "SELECT city, country FROM Customers";
				
		try(	
				// 1. 연결설정
				Connection con = ds.getConnection();
				// 2. statement 객체 생성
				Statement stmt = con.createStatement();
		
				// 3. 쿼리 실행
				ResultSet rs = stmt.executeQuery(sql);) {
		
				// 4. 실행결과 정제
				while(rs.next()) {
					cities.add(rs.getString(1));
					countries.add(rs.getString(2));
				}
				request.setAttribute("cities", cities);
				request.setAttribute("countries", countries);
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 5. 자원 닫기
		// try with resource용법 사용
		/*rs.close();
		stmt.close();
		con.close();*/
		
		/*// Database에서 records 가져오기
		List<String> cities = new ArrayList<>();
		cities.add("Berlin");
		cities.add("London");
		cities.add("Madrid");*/
		
		// request에 records 넣기
		//request.setAttribute("cities", cities);
				
		// jsp로 forward
		String location = "/WEB-INF/view/chap14/ex01.jsp";
		request.getRequestDispatcher(location).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
