package onlineportal;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FacLogout
 */
@WebServlet("/FacLogout")
public class FacLogout extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		   session.removeAttribute("username");
		   session.removeAttribute("cours");
		   session.invalidate();
		   response.sendRedirect("Logon.jsp");
	}
}
