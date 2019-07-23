<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Learning Portal</title>
<link rel="stylesheet" href="style2.css">
<style>
body{
font-size:x-large;
}
</style>
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		if (session.getAttribute("username") == null) {
			response.sendRedirect("Logon.jsp");
		}
	%>
	<%
		String course = "Se";
		session.setAttribute("cours", course);
	%>
	<div class="topnav">
		<h1>PS-Learnings</h1>
		<form action="FacLogout">
			<input type="submit" value="Logout">
		</form>
	</div>
	<div class="topnav1">
		<form action="FileServlet" method="post">
	   <input type="submit" value="Assignment">
	</form>
		<form action="Post.jsp">
			<input type="submit" value="Post a Query">
		</form>
		<form action="View.jsp">
<input type="submit" value="View Discussions">
</form>
	</div>
	<img src="se.jpg" align="right">
<div style="padding-left:16px">
	<h2>About The Course</h2>
	    <p>Software project management has wider scope than software engineering process as it involves communication, pre and post delivery support etc.This tutorial should provide you basic understanding of software product, software design and development process, software project management and design complexities etc. At the end of the tutorial you should be equipped with well understanding of software engineering concepts.</p>
</div>
<iframe width="1000" height="400" src="https://www.youtube.com/embed/sB2iQSvrcG0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</body>
</html>