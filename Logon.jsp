<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Learning Portal</title>
<link rel="stylesheet" href="style.css">
<script>
    function validate_fuser(fname_input) {
    	var reg1=/^([cse-00][1-6])/
            if(reg1.test(fname_input.value)){
                    return true;
        } else{
            alert("You have entered an invalid user name!");
            fname_input.value="";
             return false;       
          }
	}
  function validate_email(email_input) {
	  var reg=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/
			if (reg.test(email_input.value)) {
				return true;
			} else {
				alert("You have entered an invalid email address!");
				email_input.value = "";
				return false;
			}

	}
  </script>
</head>
<body>
<div class="split left">
<div class="login-page">
<div class="form">
<form action="LoginServlet" method="post" class="login-form">
 <h1>Student Login</h1>
 <input type="text" name="uname" onchange="validate_email(this)" placeholder="enter email address" required/>
 <input type="password"  name="pass" placeholder="enter password" required/>
  <input type="submit" value="Login" />
 <p class="message">Not Registered? <a href="Register.jsp">Register</a></p> 
</form>
</div>
</div>
</div>
<div class="split right">
<div class="login-page">
<div class="form">
<form action="FacLoginServlet" method="post" name="faculty" class="login-form">
 <h1>Faculty Login</h1>
 <input type="text"  name="funame" onchange="validate_fuser(this)" placeholder="enter username" required/>
 <input type="password"  name="fpass" placeholder="enter password" required/>
  <input type="submit" value="Login"/>
</form>
</div>
</div>
</div>
</body>
</html>