package app01;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import app01.dao.BoardDao;
import app01.dto.BoardDto;

/**
 * Servlet implementation class BoardListServlet
 */
@WebServlet("/board/list")
public class BoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource ds;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardListServlet() {
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
		
		// database 관련 작업 (business login 처리)
		// 간단해서 중간에 처리해주는 service가 없음.
		String pageStr = request.getParameter("page");
		if(pageStr == null || pageStr.trim().equals("")) {
			pageStr = "1";
		}
		int pageNum = Integer.parseInt(pageStr);
		int startRowNum = (pageNum - 1) * 10;
		
		BoardDao dao = new BoardDao();
		try(Connection con = ds.getConnection();) {
			List<BoardDto> list = dao.list(con,startRowNum);
			int total = dao.count(con);
			int lastPage = (total - 1) / 10 + 1;
			int startPage = (pageNum - 1) / 10 * 10 + 1;
			int endPage = startPage + 9;
			
			endPage = Math.min(lastPage, endPage);
			
			//request attribute setting
			request.setAttribute("boardList", list);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			request.setAttribute("lastPage", lastPage);
			request.setAttribute("currentPage", pageNum);
			request.setAttribute("prevPage", startPage - 10);
			request.setAttribute("nextPage", startPage + 10);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		// forward or redirect
		String path = "/WEB-INF/view/app01/list.jsp";
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
