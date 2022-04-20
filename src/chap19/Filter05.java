package chap19;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class Filter05
 */
//@WebFilter("/Filter05")
public class Filter05 implements Filter {

    /**
     * Default constructor. 
     */
    public Filter05() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		
		// 세션에 loggedInUser가 있으면 로그인 된 상태
		boolean loggedIn = false;
		HttpServletRequest req = (HttpServletRequest) request; 
		// HttpServletRequest 타입이 아닌 다른 타입도 사용하기 위해서 ServletRequest타입으로 만들었지만 매개변수로 들어오는 타입은 HttpServletRequest타입이므로 형변환을 해도 안전함.
		HttpSession session = req.getSession();
		loggedIn = session.getAttribute("loggedInUser") != null;
		
		if(loggedIn) {
			// 로그인이 되어있으면 다음 필터 (서블릿)이 일하고
			chain.doFilter(request, response);
		} else {
			// 로그아웃 상태이면 로그인폼 화면으로 이동
			String location = req.getContextPath() + "/chap19/ex02.jsp";
			((HttpServletResponse) response).sendRedirect(location);
			// HttpServletResponse 타입이 아닌 다른 타입도 사용하기 위해서 ServletResponse타입으로 만들었지만 매개변수로 들어오는 타입은 HttpServletResponse타입이므로 형변환을 해도 안전함.
		}
		
		// pass the request along the filter chain
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
