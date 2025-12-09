package lifecycle;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class LifeCycleServlet
 */
@WebServlet("/lifecycle")
public class LifeCycleServlet extends HttpServlet {

	/**
	 * 서블릿이 최초로 생성될 떄 한 번만 호출되는 초기화 메소드
	 * - 초기화 작업
	 * - ServletCongfig : 해당 서블릿에 대한 설정 정보를 담는 객체
	 */
	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("서블릿 초기화");
		System.out.println("ServletConfig : " + config);
	}

	/**
	 * 클라이언트로부터 요청이 올 때마다 호출되는 메소드
	 * - 요청 메소드에 따라서 doGet, doPost등의 메소드를 자동으로 호출한다.
	 * - 각 요청 메소드에 따른 작업 전, 공통으로 처리할 작업
	 */
	@Override
	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
		System.out.println("service 메소드 호출");
		super.service(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain; charset=UTF-8");
		response.getWriter().println("생명주기 메소드");
		System.out.println("doGet 메소드 호출");
	}
	
	/** 
	 * 서블릿이 종료될 떄 호출되는 메소드
	 */
	@Override
	public void destroy() {
		System.out.println("서블릿 종료...");
	}



}
