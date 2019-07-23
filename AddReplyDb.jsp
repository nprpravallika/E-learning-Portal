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
       String queryid=(String)session.getAttribute("querynum");
       String reply=request.getParameter("reply_input");
       int rid=0;
       String sq="select max(rid) from reply";
       try
       {
       Class.forName("oracle.jdbc.OracleDriver");
       	String url="jdbc:oracle:thin:@localhost:1521:orcl";
       	Connection con=DriverManager.getConnection(url,"system","prudhvi239");
       	PreparedStatement ps=con.prepareStatement(sq);
       	ResultSet rs=ps.executeQuery();
       	while(rs.next()){
       	rid=Integer.parseInt(rs.getString(1));
       	}
       	rid=rid+1;
        Statement stmt=con.createStatement();
   	    stmt.executeUpdate("insert into reply values("+queryid+","+rid+",'"+reply+"')");
   	    response.sendRedirect("View.jsp");
       }
       catch(Exception e)
       {
       	System.out.println("execption is "+e);
       }   
%>
</body>
</html>