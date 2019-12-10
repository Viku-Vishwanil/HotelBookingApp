<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Page</title>

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

</head>
<body>
<form action="searchhotel" method="post">
<header>Welcome to Search Hotels</header>
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
<table>
                <tbody>
                    <tr>
                    <td></td>
                    </tr>
                        <tr>
                            <td  width = "31%"class="td">Start Amount : <font color="red"><span>*</span></font></td>
                            <td width = "43%"><input type="text" name="startAmount" placeholder="Enter Amount" required="required"></td>
                            
                        </tr>
                            <tr>
                                <td width = "31%" class="td">End Amount : <font color="red"><span>*</span></font></td>
                                <td width = "43%"><input type="text" name="endAmount" placeholder="Enter Amount" required="required"></td>
                                <td width = "26%">&nbsp;</td>
                            </tr>
                            <tr align="right"><td>
                                      <input type="submit" value="Search">
                                       <input type="reset" value="Reset">
                                        </td></tr>
                            </tbody>
                            </table>
                            </article>
                            </section>
</form>
</body>
</html>