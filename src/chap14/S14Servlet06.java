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

import chap14.javaBeans.Employee;

/**
 * Servlet implementation class S14Servlet06
 */
@WebServlet("/S14Servlet06")
public class S14Servlet06 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet06() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		String sql = "SELECT FirstName, LastName, BirthDate FROM Employees WHERE EmployeeID = 1";
		
		try(
				Connection con = ds.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				){
				
					/*
					Employee employee = new Employee();
					if(rs.next()) {
						
						employee.setFirstName(rs.getString("FirstName"));
						employee.setLastName(rs.getString("LastName"));
						employee.setBirthDate(rs.getDate("BirthDate"));
					}
					
					request.setAttribute("employee", employee);*/
					List<Employee> list = new ArrayList<>();
					
					while(rs.next()) {
						Employee employee = new Employee();
						employee.setFirstName(rs.getString("FirstName"));
						employee.setLastName(rs.getString("LastName"));
						employee.setBirthDate(rs.getDate("BirthDate")); 
						// DB에서의 datatype을 servlet에서 일치시킬 필요없음
						list.add(employee);
					}
					
					request.setAttribute("employees", list);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		String path = "/WEB-INF/view/chap14/ex04.jsp";
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
