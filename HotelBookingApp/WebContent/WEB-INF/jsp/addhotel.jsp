<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Hotel</title>

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
		function onSubmit() 
		{
			alert("Inserted Successfully");
		}
	</script>
</head>
<body>
<form action="savehotel" method="post">
<header>Welcome to Add Hotel Details</header>
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
                            <td  width = "31%"class="td">Hotel Name : <font color="red"><span>*</span></font></td>
                            <td width = "43%"><input type="text" name="hname" placeholder="Enter hotel name" required="required"></td>
                       </tr>
                            <tr>
                                <td width = "31%" class="td">City : <font color="red"><span>*</span></font></td>
                                <td width = "43%"><input type="text" name="city" placeholder="Enter city" required="required"></td>
                                <td width = "26%">&nbsp;</td>
                            </tr>
                            <tr>
                                <td width = "31%" class="td">State : <font color="red"><span>*</span></font></td>
                                <td width = "43%"><input type="text" name="state" placeholder="Enter state" required="required"></td>
                                <td width = "26%">&nbsp;</td>
                            </tr>
                            <tr>
                                <td width = "31%" class="td">No Of Rooms : <font color="red"><span>*</span></font></td>
                                <td width = "43%"><input type="number" name="noOfRooms" placeholder="Enter no of rooms" required="required"></td>
                                <td width = "26%">&nbsp;</td>
                            </tr>
                            <tr>
                                <td width = "31%" class="td">Price Per Room: <font color="red"><span>*</span></font></td>
                                <td width = "43%"><input type="number" name="pricePerRoom" placeholder="Enter price" required="required"></td>
                                <td width = "26%">&nbsp;</td>
                            </tr>
                            <tr>
                                <td width = "31%" class="td">Starting Amount: <font color="red"><span>*</span></font></td>
                                <td width = "43%"><input type="number" name="startAmount" placeholder="Enter sAmount" required="required"></td>
                                <td width = "26%">&nbsp;</td>
                            </tr>
                            <tr>
                                <td width = "31%" class="td">End Amount: <font color="red"><span>*</span></font></td>
                                <td width = "43%"><input type="number" name="endAmount" placeholder="Enter eAmount" required="required"></td>
                                <td width = "26%">&nbsp;</td>
                            </tr>
                            <tr align="right"><td>
                                      <input type="submit" value="Submit" onclick="onSubmit()">
                                       <input type="reset" value="Reset">
                                        </td></tr>
                            </tbody>
                            </table>
                            </article>
                            </section>
</form>
</body>
</html>