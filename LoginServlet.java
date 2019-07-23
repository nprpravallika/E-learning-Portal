package onlineportal;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginServlet extends HttpServlet {
	String sql="select sid,password from opstudlogin where sid=? and password=?";
	String url="jdbc:oracle:thin:@localhost:1521:orcl";
	public boolean check(String uname,String pass) {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con=DriverManager.getConnection(url,"system","prudhvi239");
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,uname);
			ps.setString(2,pass);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				return true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String username=request.getParameter("uname");
		 String password=request.getParameter("pass");
		  PrintWriter out = response.getWriter();
		 
			if(check(username,password)){
				HttpSession session=request.getSession();
				session.setAttribute("username", username);
			     response.sendRedirect("WelcomeStud.jsp");
			}
			else {
				out.println("<script type=\"text/javascript\">");
				   out.println("alert('Invalid Details!!Try Again');");
				   out.println("location='Logon.jsp';");
				   out.println("</script>");
				//response.sendRedirect("Logon.jsp");
			}
	}

}
