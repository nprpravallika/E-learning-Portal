<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Learning Portal</title>
<style>
.topnav {
  overflow: hidden;
  background-color: #333;
}
.topnav a {
  float: right;
  color: #f2f2f2;
  text-align: center;
  padding: 34px 16px;
  text-decoration: none;
  font-size: 17px;
}
.topnav h1 {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 34px 16px;
  text-decoration: none;
  font-size: 25px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}
.topnav input[type="submit"]{
  float: right;
  color: #f2f2f2;
 background-color: #556B2F;
  text-align: center;
  padding: 30px 11px;
  text-decoration: none;
  font-size: 17px;
}
a {font-size: 30px}
</style>
</head>
<body>
<%@ page import="java.sql.*" %>
       <%
      response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
      response.setHeader("Pragma","no-cache");
       if(session.getAttribute("username")==null){
    	   response.sendRedirect("Logon.jsp");
       }
       %>
       <div class="topnav">
           <h1>PS-Learnings</h1>
            <form action="CourseAdd">
            <input type="submit" value="Add Courses" />
            </form>
            <form action="FacLogout">
            <input type="submit" value="Logout" />
            </form>
       </div> 
       <br>
       <br>
       <br>
       <%
       String sql="select course1,course2,course3 from opstudlogin where sid=?";
       String name=(String)session.getAttribute("username");
       String ax,bx,cx;
       try
		{
       Class.forName("oracle.jdbc.OracleDriver");
  		String url="jdbc:oracle:thin:@localhost:1521:orcl";
  		Connection con=DriverManager.getConnection(url,"system","prudhvi239");
  		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,name);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			ax=rs.getString(1);
			bx=rs.getString(2);
			cx=rs.getString(3);
			if(ax!=null){
				if(ax.equals("c1")){
					  out.println("<a href=");
					  out.println("Ds.jsp");
					  out.println(">");
					  out.println("Data Structures</a>");
				}
				else if(ax.equals("c2")){
					 out.println("<a href=");
					  out.println("Dbms.jsp");
					  out.println(">");
					  out.println("Data Base Management Systems</a>");
				}
				else if(ax.equals("c3")){
					 out.println("<a href=");
					  out.println("Daa.jsp");
					  out.println(">");
					  out.println("Data Analysis and Algorithms</a>");
				}
				else if(ax.equals("c4")){
					 out.println("<a href=");
					  out.println("Se.jsp");
					  out.println(">");
					  out.println("Software Engineering</a>");
				}
				else if(ax.equals("c5")){
					 out.println("<a href=");
					  out.println("Eh.jsp");
					  out.println(">");
					  out.println("Ethical Hacking</a>");

				}
				else if(ax.equals("c6")){
					 out.println("<a href=");
					  out.println("Ai.jsp");
					  out.println(">");
					  out.println("Artificial Intelligence</a>");
				}
			}
		    out.println("<br>");
		    out.println("<br>");
			if(bx!=null){
				if(bx.equals("c1")){
					  out.println("<a href=");
					  out.println("Ds.jsp");
					  out.println(">");
					  out.println("Data Structures</a>");
				}
				else if(bx.equals("c2")){
					 out.println("<a href=");
					  out.println("Dbms.jsp");
					  out.println(">");
					  out.println("Data Base Management Systems</a>");
				}
				else if(bx.equals("c3")){
					 out.println("<a href=");
					  out.println("Daa.jsp");
					  out.println(">");
					  out.println("Data Analysis and Algorithms</a>");
				}
				else if(bx.equals("c4")){
					 out.println("<a href=");
					  out.println("Se.jsp");
					  out.println(">");
					  out.println("Software Engineering</a>");
				}
				else if(bx.equals("c5")){
					 out.println("<a href=");
					  out.println("Eh.jsp");
					  out.println(">");
					  out.println("Ethical Hacking</a>");

				}
				else if(bx.equals("c6")){
					 out.println("<a href=");
					  out.println("Ai.jsp");
					  out.println(">");
					  out.println("Artificial Intelligence</a>");
				}
			}
			out.println("<br>");
			out.println("<br>");
			if(cx!=null){
				if(cx.equals("c1")){
					  out.println("<a href=");
					  out.println("Ds.jsp");
					  out.println(">");
					  out.println("Data Structures</a>");
				}
				else if(cx.equals("c2")){
					 out.println("<a href=");
					  out.println("Dbms.jsp");
					  out.println(">");
					  out.println("Data Base Management Systems</a>");
				}
				else if(cx.equals("c3")){
					 out.println("<a href=");
					  out.println("Daa.jsp");
					  out.println(">");
					  out.println("Data Analysis and Algorithms</a>");
				}
				else if(cx.equals("c4")){
					 out.println("<a href=");
					  out.println("Se.jsp");
					  out.println(">");
					  out.println("Software Engineering</a>");
				}
				else if(cx.equals("c5")){
					 out.println("<a href=");
					  out.println("Eh.jsp");
					  out.println(">");
					  out.println("Ethical Hacking</a>");

				}
				else if(cx.equals("c6")){
					 out.println("<a href=");
					  out.println("Ai.jsp");
					  out.println(">");
					  out.println("Artificial Intelligence</a>");
				}
			}
		  }
		}
		catch(Exception e)
		{
			System.out.println("execption is "+e);
		}
       %>  
</body>
</html>