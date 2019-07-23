<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Learning Portal</title>
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
 h1 { color: #606060; }
</style>
</head>
<body>
	<h1>Click on the QueryId button to answer Queries!!!!</h1>
	<table id="t01" border="1" style="width: 50%">
		<tr>
			<th>Query Id</th>
			<th>Query Statement</th>
		</tr>
		<%@ page import="java.sql.*"%>
		<%
			String sql = "select qid,stmt from query where iid=? and status=?";
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String i_id;
			try {
				Class.forName("oracle.jdbc.OracleDriver");
				Connection con = DriverManager.getConnection(url, "system", "prudhvi239");
				PreparedStatement ps = con.prepareStatement(sql);
				i_id = session.getAttribute("username").toString();
				ps.setString(1, i_id);
				ps.setString(2,"yes");
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
		%>
		<tr>
            <td>
				<form action="PostReply.jsp">
					<input type="submit" value=<%=rs.getString(1)%> />
					<%
					String qnid=rs.getString(1);
					session.setAttribute("qid",qnid);
					%>
				</form>
			</td>
			<td><%=rs.getString(2)%></td>
		</tr>
		<%
			}
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</table>
</body>
</html>