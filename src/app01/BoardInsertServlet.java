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

import app01.dao.BoardDao;
import app01.dto.BoardDto;

/**
 * Servlet implementation class BoardInsertServlet
 */
@WebServlet("/board/insert")
public class BoardInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private DataSource ds;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
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
		
		String path = "/WEB-INF/view/app01/insert.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// request 파라미터 가공
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		boolean success = false;
		//dto : data transfer object. 정보전달 객체. javabeans객체
		BoardDto dto = new BoardDto();
		dto.setTitle(title);
		dto.setBody(body);
		// db에 전달할 내용 세팅
		// 전달 시 외부환경세팅(인코딩방식 같은것)은 필터로 세팅할것
		
		// db에 입력 -> 따로 뺌. 유지보수하기 힘듬.
		 
		try (Connection con = ds.getConnection();) {

			// DAO (Data Access Object) - DB에 접근하여 query를 실행하는 java객체
			// 각 method마다 필요한 query문을 작성해 놓고 실행하면됨.
			BoardDao dao = new BoardDao();
			success = dao.insert(con, dto);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		// forward /redirect
		String path = request.getContextPath() + "/board/get?id=" + dto.getId();

		//String path = request.getContextPath() + "/board/list";
		if(success) {
			path += "&successInsert=true";
		} else {
			path += "&successInsert=false";
		}
		response.sendRedirect(path);
	}

}
