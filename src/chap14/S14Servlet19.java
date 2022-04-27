package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
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

import chap14.javaBeans.Customer;

/**
 * Servlet implementation class S14Servlet19
 */
@WebServlet("/S14Servlet19")
public class S14Servlet19 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet19() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql1 = "SELECT CustomerID, CustomerName, City, Country, PostalCode "
				+ "FROM Customers "
				+ "ORDER BY CustomerID "
				+ "LIMIT ?, 10";
		
		String sql2 = "SELECT COUNT(*) FROM Customers ";
		
		List<Customer> list = new ArrayList<>();
		String pageNumStr = request.getParameter("page");
		
		if(pageNumStr == null || pageNumStr.trim().equals("")) {
			pageNumStr = "1";
		} // 현재페이지를 받아올때 page파라미터가 없거나 빈칸일 수 있으므로 그 경우 초기값을 1로 설정함
		
		int pageNum = Integer.parseInt(pageNumStr); // 현재 페이지
		int startPage = (pageNum - 1) / 10 * 10 + 1;// 현재 페이지가 속해있는 범위의 시작페이지 
		int endPage = startPage + 9; // 현재 페이지가 속해있는 범위의 끝페이지
		int startRowNum = (pageNum - 1) * 10; // 쿼리에 현재페이지가 속해있는 범위의 시작페이지를 보내기 위한 변수
		int total = 0; // 등록된 고객 수 읽어오기위한 변수
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		
		try(Connection con = ds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql1);
			Statement stmt = con.createStatement();	){
			
			pstmt.setInt(1, startRowNum);
			
			try(ResultSet rs = pstmt.executeQuery();){
				while(rs.next()) {
					Customer cus = new Customer();
					cus.setId(rs.getInt("CustomerID"));
					cus.setCustomerName(rs.getString("CustomerName"));
					cus.setCity(rs.getString("City"));
					cus.setCountry(rs.getString("Country"));
					cus.setPostalCode(rs.getString("PostalCode"));
					
					list.add(cus);
				}	
			}
			
			try(ResultSet rs1 = stmt.executeQuery(sql2);) {
				if(rs1.next()) {
					total = rs1.getInt(1);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		int lastPage = (total - 1) / 10 + 1; // 맨 마지막 페이지
		
		endPage = Math.min(lastPage, endPage); // endPage를 계산한것을 그대로 두면 없는 페이지까지 보여질 수 있다.
											   // 그래서 두 페이지 중 작은것을 계산하여 foreach를 수행하도록 함.	
		request.setAttribute("customerList", list);
		request.setAttribute("startPage", startPage); // 네비게이션바 한줄의 시작페이지 
		request.setAttribute("endPage", endPage); // 네비게이션바 한줄의 끝 페이지
		request.setAttribute("prevPage", startPage - 10); // 네비게이션바 한 줄의 이전페이지
		request.setAttribute("nextPage", startPage + 10); // 네비게이션바 한 줄의 다음페이지
		request.setAttribute("currentPage", pageNum); // 현재 클릭한 페이지
		request.setAttribute("lastPage", lastPage); // 맨 마지막 페이지
		
		String path = "/WEB-INF/view/chap14/ex13.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
