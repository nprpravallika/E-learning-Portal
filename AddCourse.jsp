<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Learning Portal</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<div class="form">
<form action="UpdateCourse.jsp">
<br><br>
<select name="courses" required>
    <option value="" disabled selected>Select your courses</option>
    <option value="DS">Data Structures</option>
    <option value="DBMS">Database Management System</option>
    <option value="DAA">Design and Analysis of Algorithms</option>
    <option value="SE">Software Engineering</option>
    <option value="EH">Ethical Hacking</option>
    <option value="AI">Artificial Intelligence</option>

  </select>
  <br><br>
  <input type="submit">
</form>
</div>
</body>
</html>