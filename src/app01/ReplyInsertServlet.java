package app01;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import app01.dao.ReplyDao;
import app01.dto.ReplyDto;

/**
 * Servlet implementation class ReplyInsertServlet
 */
@WebServlet("/reply/insert")
public class ReplyInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource ds;      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReplyInsertServlet() {
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
		
		//request parameter 수집/가공
		String content = request.getParameter("replyContent");
		String boardId = request.getParameter("boardId");
		ReplyDto replyDto = new ReplyDto();
		replyDto.setContent(content);
		replyDto.setBoardId(Integer.parseInt(boardId));
		
		//business logic 처리
		ReplyDao dao = new ReplyDao();
		boolean success = false;
		
		try(Connection con = ds.getConnection();) {
			success = dao.insert(con, replyDto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//결과 셋팅
		String location = request.getContextPath() + "/board/get?id=" + replyDto.getBoardId();
		if(success) {
			location += "&rs=true";
		} else {
			location += "&rs=false";
		}
		
		//forward or redirect
		response.sendRedirect(location);
	}

}
