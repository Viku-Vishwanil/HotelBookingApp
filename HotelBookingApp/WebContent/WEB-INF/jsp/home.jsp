<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
  background-color: #666;
  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: white;
}

/* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 30%;
  height: 300px; /* only for demonstration, should be removed */
  background: #ccc;
  padding: 20px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
}

article {
  float: left;
  padding: 20px;
  width: 70%;
  background-color: #f1f1f1;
  height: 300px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the footer */
footer {
  background-color: #777;
  padding: 10px;
  text-align: center;
  color: white;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
}
</style>

<script type="text/javascript">
		function onLogOut() 
		{
			alert("You have been successfully logout");
		}
	</script>
	
</head>
<body>
<header>
  <h3>Welcome to Hotel Booking Service</h3>
</header>
<h4 align="right"><a href="home" onclick="onLogOut()">Logout</a></h4>
<div>
		<marquee>
		<font color="red" size="5">
			Welcome ${param.username}
		</font>
		</marquee>
		</div>
<section>
  <nav>
    <ul>
	    <li><a href="home">Home</a></li>
	    <li><a href="login">Login</a></li>
	    <li><a href="addhotel">Add Hotel</a></li>
	     <li><a href="search">Search Hotel</a></li>
    </ul>
  </nav>
  
  <article>
    <h1>Welcome</h1>
    <p>This is the home page from this page you are able to add hotels in database<br>Login & read the hotel details from database.</p>
    <p>Thank you.</p>
  </article>
</section>
<footer>
  <p>&copy;2019 Vikash</p>
</footer>
</body>
</html>