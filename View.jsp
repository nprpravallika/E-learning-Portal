<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Learning Portal</title>
<style>
body{
background-color: #C0C0C0;
}
 h1 { color: #0000CC; }
</style>
</head>
<body>
<h1>Click on the QueryId button to answer Queries!!!!</h1>
	<%@ page import="java.util.*, java.sql.*"%>
	<%
		Connection con = null;
		java.sql.ResultSet rs = null;
		java.sql.ResultSet rs2 = null;
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String sql = "select qid,sid,stmt from query where status=?";
		String sql1 = "select replystmt from reply where qid=?";
        String q="Query:";
		try { //try start
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection(url, "system", "prudhvi239");
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "no");
			rs = ps.executeQuery();
			String retnValue = null;
			while (rs.next()) { //while start
				retnValue = rs.getString(1);
				out.println("<font size="+"5 color="+"#0080FF><big><b><b>"+rs.getString(2)+"</b></b></big></font>");
				out.println("<br>");
				out.println("<br>");
				out.print("<font size="+"3 color="+"#7F00FF><big><b><b>"+q+"</b></b></big></font>");
				%>
				<form action="AddReply.jsp">
				<input type="submit" name="query_number" value=<%=rs.getString(1)%> />
				</form>
				<%
				out.println("<big><b>"+rs.getString(3)+"</b></big>");
				out.println("<br>");
				if (retnValue != null) { //ifstart
		            try { //try1start
						PreparedStatement ps2 = con.prepareStatement(sql1);
						ps2.setString(1, retnValue);
						rs2 = ps2.executeQuery();
						while (rs2.next()) {
							out.println("<big><b>"+rs2.getString(1)+"</b></big>");
							out.println("<br>");
							out.println("<br>");
						}
					} //try1end
					catch (Exception e) {
						e.printStackTrace();
					}
		        }
		    } //whileend
		} //tryend
		catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>