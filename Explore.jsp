<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Online Learning Portal</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}


header {
  background-color: #666;
  padding: 1px;
  text-align: center;
  font-size: 35px;
  color: white;
}


nav {
  float: left;
  width: 30%;
  height: 300px; 
  background: #ccc;
  padding: 20px;
}


nav ul {
  list-style-type: none;
  padding: 0;
}

article {
  float: left;
  padding: 20px;
  width: 100%;
  background-color: #f1f1f1;
  height: 1000px; /* only for demonstration, should be removed */
}


section:after {
  content: "";
  display: table;
  clear: both;
}



@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
}
</style>
</head>
<body>


<header>
  <h4>Explore Courses</h4>
</header>

<section>
  
  
  <article>
    <h1>DATA STRUCTURES</h1>
    <p>Data Structure is a way to store and organize data so that it can be used efficiently. Our Data Structure tutorial includes all topics of Data Structure such as Array, Pointer, Structure, Linked List, Stack, Queue, Graph, Searching, Sorting, Programs, etc.</p>
     <a href="Register.jsp">Register?</a> 
    <h1>DATABASE MANAGEMENT SYSTEM</h1>
    <p>DBMS Tutorial provides basic and advanced concepts of Database. Our DBMS Tutorial is designed for beginners and professionals both.Database management system is software that is used to manage the database.Our DBMS Tutorial includes all topics of DBMS such as introduction, ER model, keys, relational model, join operation, SQL, functional dependency, transaction, concurrency control, etc.</p>
     <a href="Register.jsp">Register?</a>
    <h1>DESIGN AND ANALYSIS OF ALGORITHMS</h1>
    <p>An Algorithm is a sequence of steps to solve a problem. Design and Analysis of Algorithm is very important for designing algorithm to solve different types of problems in the branch of computer science and information technology. This tutorial introduces the fundamental concepts of Designing Strategies, Complexity analysis of Algorithms, followed by problems on Graph Theory and Sorting methods. This tutorial also includes the basic concepts on Complexity theory.</p> 
    <a href="Register.jsp">Register?</a>
    <h1>SOFTWARE ENGINEERING</h1>
    <p>Software project management has wider scope than software engineering process as it involves communication, pre and post delivery support etc.This tutorial should provide you basic understanding of software product, software design and development process, software project management and design complexities etc. At the end of the tutorial you should be equipped with well understanding of software engineering concepts.</p>
    <a href="Register.jsp">Register?</a>
    <h1>ETHICAL HACKING</h1>
    <p>Hacking has been a part of computing for almost five decades and it is a very broad discipline, which covers a wide range of topics. The first known event of hacking had taken place in 1960 at MIT and at the same time, the term "Hacker" was originated. In this tutorial, we will take you through the various concepts of Ethical Hacking and explain how you can use them in a real-time environment.</p>
    <a href="Register.jsp">Register?</a>
    <h1>ARTIFICIAL INTELLIGENCE</h1>
    <p>This tutorial provides introductory knowledge on Artificial Intelligence. It would come to a great help if you are about to select Artificial Intelligence as a course subject. You can briefly know about the areas of AI in which research is prospering.</p>
    <a href="Register.jsp">Register?</a>
</article>

     
</section>



</body>
</html>
