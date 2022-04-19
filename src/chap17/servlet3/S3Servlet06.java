package chap17.servlet3;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class S3Servlet06
 */
/*@WebServlet("/S3Servlet06")*/
public class S3Servlet06 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private String viewName;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S3Servlet06() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    public void init() throws ServletException {
    	this.viewName = getInitParameter("viewName"); // init메소드는 request가 오기전에 실행되므로 인스턴스변수를 쓰는것이 가능.
    	// 경로 미리 받아서 설정
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher(viewName).forward(request, response); // forward
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
