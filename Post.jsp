<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">
<style>
    h1 { color: #C0C0C0; }
</style>
<script>
function validate()
{
	 var qvalue=document.getElementById("query").value
         if(qvalue.length<1) 
         {      
              alert("Please provide a valid answer");
              return false;       
        }
         
         else
           return true;
}
</script>
<title>Online Learning Portal</title>
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		if (session.getAttribute("username") == null) {
			response.sendRedirect("Logon.jsp");
		}
	%>
	<h1>Post your query...</h1>
	<br>
<br>
<br>
<br>
	<form action="Query.jsp" method="post">
		<div class="form">
			<br>
			<textarea name="qn_input" rows="5" cols="50" id="query" required></textarea>
			<br>
			<br>
			<br> <input type="submit" onClick="validate()" value="Post">

		</div>
	</form>
</body>
</html>