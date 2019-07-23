<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Learning Portal</title>
<link rel="stylesheet" href="style2.css">
<style>
table, th, td {
	border: 1px solid black;
}

th, td {
	padding: 15px;
}
table#t01 tr:nth-child(even) {
  background-color: #eee;
}
table#t01 tr:nth-child(odd) {
 background-color: #fff;
}
table#t01 th {
  background-color: black;
  color: white;
}
 h1 { color: #3333FF; }
</style>
</head>
<body>
 <%
      response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
      response.setHeader("Pragma","no-cache");
       if(session.getAttribute("username")==null){
    	   response.sendRedirect("Logon.jsp");
       }
       %>
       <div class="topnav">
  <h1>PS-Learnings</h1>
    <form action="FacLogout">
   <input type="submit" value="Logout" />
   </form>
  </div>
<div class="topnav1">
<form action="View.jsp">
<input type="submit" value="Discussions">
</form>
<form action="Reply.jsp">
<input type="submit" value="Reply a Query">
</form>
</div>
	<h1>Students Registered for the Course</h1>
	<table id="t01" border="1" style="width: 50%">
		<tr>
			<th>Student Id</th>
			<th>Name</th>
		</tr>
		<%@ page import="java.sql.*"%>
		<%
			String sql = "select cid from course2 where iid=?";
		    String sql2 = "select sid,sname from opstudlogin where course1=? or course2=? or course3=?";
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String i_id,cidValue;
			try {
				Class.forName("oracle.jdbc.OracleDriver");
				Connection con = DriverManager.getConnection(url, "system", "prudhvi239");
				PreparedStatement ps = con.prepareStatement(sql);
				i_id = session.getAttribute("username").toString();
				ps.setString(1, i_id);
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					cidValue=rs.getString(1);
					if (cidValue != null) {
			            try { 
							PreparedStatement ps2 = con.prepareStatement(sql2);
							ps2.setString(1, cidValue);
							ps2.setString(2, cidValue);
							ps2.setString(3, cidValue);
							ResultSet rs2 = ps2.executeQuery();
							while (rs2.next()) {
			%>
			
								<tr>
					            <td><%=rs2.getString(1)%></td>								
								<td><%=rs2.getString(2)%></td>
							    </tr>
			<%
							}
						} 
						catch (Exception e) {
							e.printStackTrace();
						}
			        }
			    }
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</table>
</body>
</html>