<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Learning Portal</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
    String sql="select course2,course3 from opstudlogin where sid=?";
    String name=(String)session.getAttribute("username");
    String ax,bx;
    String course=request.getParameter("courses");
    if(course.equals("DS"))
 	   course="c1";
    else if(course.equals("DBMS"))
 	   course="c2";
    else if(course.equals("DAA"))
 	   course="c3";
    else if(course.equals("SE"))
 	   course="c4";
    else if(course.equals("EH"))
 	   course="c5";
    else if(course.equals("AI"))
 	   course="c6";
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
    	   if(ax==null){
    		   PreparedStatement ps2=con.prepareStatement("update opstudlogin set course2=? where sid=?");
    		   ps2.setString(1,course);
    		   ps2.setString(2,name);
    		   ps2.executeUpdate();
    		   response.sendRedirect("WelcomeStud.jsp");
    	   }
    	   else if(bx==null){
    		   PreparedStatement ps3=con.prepareStatement("update opstudlogin set course3=? where sid=?");
    		   ps3.setString(1,course);
    		   ps3.setString(2,name);
    		   ps3.executeUpdate();
    		   response.sendRedirect("WelcomeStud.jsp");
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