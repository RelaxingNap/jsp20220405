package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import chap14.javaBeans.Customer;

/**
 * Servlet implementation class S14Servlet10
 */
@WebServlet("/S14Servlet10")
public class S14Servlet10 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet10() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String param = request.getParameter("city");
		String sql = "SELECT CustomerName, City, Country, PostalCode "
				+ "FROM Customers "
				+ "WHERE City =" + "'" + param + "'";
		//query string이 외부에 노출되어서 쿼리가 완성되면 sql injection공격을 당할 수 있다.
		List<Customer> list = new ArrayList<>();
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		
		try( 
			Connection con = ds.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql); ){
			
				while(rs.next()) {
				Customer customer = new Customer();
				
				String name = rs.getString("CustomerName");
				String city = rs.getString(2);
				String country = rs.getString("Country");
				String postCode = rs.getString(4);
				
				customer.setCity(city);
				customer.setCountry(country);
				customer.setPostalCode(postCode);
				customer.setCustomerName(name);
				
				list.add(customer);
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
				
		request.setAttribute("customers", list);
		
		String path = "/WEB-INF/view/chap14/ex05.jsp";
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
