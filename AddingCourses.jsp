<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
    background-image:linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.6)),url(pic1.jpg); 
    height: 100vh;
    background-size: cover;
    background-position: center;
}
</style>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
String sql="select course1,course2,course3 from opstudlogin where sid=?";
String course2,course3; 
int cnt=0;
try
{
Class.forName("oracle.jdbc.OracleDriver");
	String url="jdbc:oracle:thin:@localhost:1521:orcl";
	Connection con=DriverManager.getConnection(url,"system","prudhvi239");
	PreparedStatement ps=con.prepareStatement(sql);
String name=(String) session.getAttribute("username");
ps.setString(1,name);
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
%>
</body>
</html>