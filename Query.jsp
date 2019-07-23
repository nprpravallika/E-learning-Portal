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
       String course=(String) session.getAttribute("cours");
String file=course+".jsp";
       String qn=request.getParameter("qn_input");
       String i_id="";
       String status="yes";
       String s_id;
       int qid=0;
       String sq="select max(qid) from query";
       if(course.equals("Ds"))
    	   i_id="cse-001";
       else if(course.equals("Dbms"))
    	   i_id="cse-002";
       else if(course.equals("Daa"))
    	   i_id="cse-003";
       else if(course.equals("Se"))
    	   i_id="cse-004";
       else if(course.equals("Eh"))
    	   i_id="cse-005";
       else if(course.equals("Ai"))
    	   i_id="cse-006";
       try
       {
       Class.forName("oracle.jdbc.OracleDriver");
       	String url="jdbc:oracle:thin:@localhost:1521:orcl";
       	Connection con=DriverManager.getConnection(url,"system","prudhvi239");
       	PreparedStatement ps=con.prepareStatement(sq);
       	ResultSet rs=ps.executeQuery();
       	while(rs.next()){
       	qid=Integer.parseInt(rs.getString(1));
       	}
       	qid=qid+1;
        s_id=(String) session.getAttribute("username");
        Statement stmt=con.createStatement();
   	    stmt.executeUpdate("insert into query values("+qid+",'"+i_id+"','"+s_id+"','"+qn+"','"+status+"')");
   	    response.sendRedirect(file);
       }
       catch(Exception e)
       {
       	System.out.println("execption is "+e);
       }   
%>
    	  
</body>
</html>