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
 * Servlet implementation class ReplyModifyServlet
 */
@WebServlet("/reply/modify")
public class ReplyModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource ds;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReplyModifyServlet() {
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
		
		// request 파라미터 수집 가공
		String boardIdStr = request.getParameter("boardId");
		String replyIdStr = request.getParameter("replyId");
		String replyContent = request.getParameter("replyContent");
		
		ReplyDto dto = new ReplyDto();
		dto.setId(Integer.parseInt(replyIdStr));
		dto.setContent(replyContent);
		
		// dao에 일시키고
		ReplyDao replyDao = new ReplyDao();
				
		try(Connection con = ds.getConnection();) {
			replyDao.update(con, dto);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		// 결과 세팅
		
		// forward / redirect
		String location = request.getContextPath() + "/board/get?id=" + boardIdStr;
		response.sendRedirect(location);
	}

}
