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
		}
		
		int pageNum = Integer.parseInt(pageNumStr);
		int startPage = (pageNum - 1) / 10 * 10 + 1;
		int endPage = startPage + 9;
		int startRowNum = (pageNum - 1) * 10;
		int total = 0;
		
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
		
		int lastPage = (total - 1) / 10 + 1;
		
		endPage = Math.min(lastPage, endPage); // endPage를 계산한것을 그대로 두면 없는 페이지까지 보여질 수 있다.
				
		request.setAttribute("customerList", list);
		request.setAttribute("startPage", startPage);  
		request.setAttribute("endPage", endPage);
		request.setAttribute("prevPage", startPage - 10);
		request.setAttribute("nextPage", startPage + 10);
		request.setAttribute("currentPage", pageNum);
		request.setAttribute("lastPage", lastPage);
		
		String path = "/WEB-INF/view/chap14/ex13.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
