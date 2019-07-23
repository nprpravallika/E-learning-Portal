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
<%@ page import="onlineportal.Registercheck" %>
    <%
       String name=request.getParameter("name_input");
       String email=request.getParameter("email_input");
       String password=request.getParameter("password_input");
       String course1=request.getParameter("course1_input");
       String course2="";
       String course3=""; 
       if(course1.equals("DS"))
    	   course1="c1";
       else if(course1.equals("DBMS"))
    	   course1="c2";
       else if(course1.equals("DAA"))
    	   course1="c3";
       else if(course1.equals("SE"))
    	   course1="c4";
       else if(course1.equals("EH"))
    	   course1="c5";
       else if(course1.equals("AI"))
    	   course1="c6";
       Registercheck rc=new Registercheck();
       boolean res=rc.verify(email);
       if(res){
       try
		{
        Class.forName("oracle.jdbc.OracleDriver");
   		String url="jdbc:oracle:thin:@localhost:1521:orcl";
   		Connection con=DriverManager.getConnection(url,"system","prudhvi239");
   	    Statement stmt=con.createStatement();
   	    stmt.executeUpdate("insert into opstudlogin values('"+email+"','"+name+"','"+password+"','"+course1+"','"+course2+"','"+course3+"')");
   	    request.getSession().setAttribute("username", email);
   	    response.sendRedirect("WelcomeStud.jsp");
		}
		catch(Exception e)
		{
			System.out.println("execption is "+e);
		}
       }else{
    	   response.sendRedirect("Register.jsp");
       }
      %>

</body>
</html>