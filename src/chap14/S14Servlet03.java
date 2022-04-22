package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import chap14.javaBeans.Customer;

/**
 * Servlet implementation class S14Servlet03
 */
@WebServlet("/S14Servlet03")
public class S14Servlet03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet03() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT CustomerName, Country, City FROM Customers WHERE CustomerID = 1";
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		
		try (
				Connection con = ds.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				){
					if(rs.next()) {
						//rs객체의 시작위치는 첫번째 레코드이전위치임
						//그래서 rs객체의 next를 해서 
						//쿼리문의 결과가 있으면 쿼리문 결과를 가져오고 true를 return
						//실패하면 false return
						
						Customer customer = new Customer();
						customer.setCustomerName(rs.getString(1));
						customer.setCountry(rs.getString(2)); 
						customer.setCity(rs.getString(3));
						
						request.setAttribute("customer", customer);
					}
				
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		String path = "/WEB-INF/view/chap14/ex02.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
