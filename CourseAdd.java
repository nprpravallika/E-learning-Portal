package onlineportal;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/CourseAdd")
public class CourseAdd extends HttpServlet {
	 String sql="select course2,course3 from opstudlogin where sid=?";
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String course2,course3; 
		int cnt=0;
		try
			{
	        Class.forName("oracle.jdbc.OracleDriver");
	   		String url="jdbc:oracle:thin:@localhost:1521:orcl";
	   		Connection con=DriverManager.getConnection(url,"system","prudhvi239");
	   		PreparedStatement ps=con.prepareStatement(sql);
	   		HttpSession session=request.getSession();
	        String name=(String) session.getAttribute("username");
	        ps.setString(1,name);
	        PrintWriter out = response.getWriter();
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
			course2=rs.getString(1);
			course3=rs.getString(2);
			if(course2==null)
				cnt++;
			if(course3==null)
				cnt++;
			}
			if(cnt==2||cnt==1)
	   	         response.sendRedirect("AddCourse.jsp");
			else {
				
				out.println("<script type=\"text/javascript\">");
				   out.println("alert('Cannot register for more than 3 courses');");
				   out.println("location='WelcomeStud.jsp';");
				   out.println("</script>");
			}
			}
			catch(Exception e)
			{
				System.out.println("execption is "+e);
			}
	}

}
