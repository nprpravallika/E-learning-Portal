package onlineportal;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class FacLoginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String username=request.getParameter("funame");
		 String password=request.getParameter("fpass");
		 
		 FacLoginDb ldb=new FacLoginDb();
			if(ldb.check(username,password)){
				HttpSession session=request.getSession();
				session.setAttribute("username", username);
			     response.sendRedirect("WelcomeFac.jsp");
			}
			else
				response.sendRedirect("Logon.jsp");
	}
}