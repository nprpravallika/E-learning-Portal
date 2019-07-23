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
<div class="register-page">
<div class="form">
   <form action="stud_reg_info.jsp" method="post" class="login-form">
     <input type="text" name="email_input" placeholder="Enter email id" required/>
      <input type="text" name="name_input" placeholder="Enter your name" required/>
     <input type="password" name="password_input" placeholder="password" required/>
      <select name="course1_input" required>
      <option value="" disabled selected>Select your courses</option>
       <option value="DS">Data Structures</option>
       <option value="DBMS">Database Management System</option>
       <option value="DAA">Design and Analysis of Algorithms</option>
       <option value="SE">Software Engineering</option>  
       <option value="EH">Ethical Hacking</option>
       <option value="AI">Artificial Intelligence</option>
     </select>  
     <input type="submit" value="Register">
     <p class="message">Already Registered? <a href="Logon.jsp">Login</a></p>
</form>
</div>
</div>
</body>
</html>