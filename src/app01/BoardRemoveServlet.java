package app01;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import app01.dao.BoardDao;
import app01.dao.ReplyDao;

/**
 * Servlet implementation class BoardRemoveServlet
 */
@WebServlet("/board/remove")
public class BoardRemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource ds;      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardRemoveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void init() throws ServletException { 
    	// 한번만 실행되면 되고, application영역이기 때문에, init()에서 처음에 미리 실행시켜둠
    	// 잘 안씀.
    	ServletContext application = getServletContext();
    	this.ds = (DataSource) application.getAttribute("dbpool");
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request 파라미터 수집, 가공
		String idStr = request.getParameter("id");
		int id = Integer.parseInt(idStr);
		boolean success = false;
		// 비지니스 로직 처리(db crud)
		BoardDao dao = new BoardDao();
		ReplyDao replyDao = new ReplyDao();
		
		Connection con = null; 
		try {
			con = ds.getConnection();
			con.setAutoCommit(false);
			
			replyDao.deleteByBoardId(con, id);
			
			/*int i = 0;
			int j = 3 / i; // ArithmeticException
			트랜잭션처리를 잘 생각해서 해야함.
			*/			
			success = dao.delete(con,id);
						
			con.commit();
		} catch (Exception e) {
			e.printStackTrace();
			if(con != null) {
				try {
					con.rollback();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}				
			}
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		
		// 결과 set
		
		// forward or redirect
		String location = request.getContextPath() + "/board/list";
		if(success) {
			location += "?successDelete=true";
		} else {
			location += "?successDelete=false";
		}
		
		response.sendRedirect(location);
	}

}
