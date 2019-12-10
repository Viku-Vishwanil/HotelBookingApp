<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>hotel details</title>
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
<header>All Hotel Details </header>
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
<TABLE border="2" align="center">
					<thead>
							<tr>
								<th>Sl no</th>
								<th>Hotel Name</th>
								<th>City</th>
								<th>State</th>
								<th>No of Room</th>
								<th>Price per Room</th>
								<th>Start Amount</th>
								<th>End Amount</th>
								
							</tr>
						</thead>
						<tbody>
 <c:forEach items="${hotelsInfo}" var="hotel">
  <tr>
    <td>${hotel.slNo}</td>
    <td>${hotel.hotelName}</td>
    <td>${hotel.city}</td>
    <td>${hotel.state}</td>
    <td>${hotel.noOfRooms}</td>
    <td>${hotel.pricePerRoom}</td>
    <td>${hotel.startAmount}</td>
    <td>${hotel.endAmount}</td>
    
     </tr>
</c:forEach>
</tbody>
</TABLE>
</article>
</section>
</body>
</html>