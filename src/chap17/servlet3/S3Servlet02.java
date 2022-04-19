package chap17.servlet3;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class S3Servlet02
 */
/*@WebServlet("/S3Servlet02")*/
public class S3Servlet02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private final String field;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S3Servlet02() {
        super();
        // TODO Auto-generated constructor stub
        System.out.println("서블릿 클래스로 객체 만드는 중...");
        //여러곳에서 공유하는 객체임. 객체는 하나만 만들어짐. 인스턴스 필드는 쓰지말것.(읽는것은 가능)
        field = "three";
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 System.out.println("서블릿 2 두겟 메소드 실행!!!");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
